// Copyright 2016 The Cockroach Authors.
//
// Use of this software is governed by the Business Source License
// included in the file licenses/BSL.txt.
//
// As of the Change Date specified in that file, in accordance with
// the Business Source License, use of this software will be governed
// by the Apache License, Version 2.0, included in the file
// licenses/APL.txt.
//
// This file provides generic interfaces that allow tests to set up test tenants
// without importing the server package (avoiding circular dependencies). This

package serverutils

import (
	"context"
	"net/http"
	"net/url"

	"github.com/cockroachdb/cockroach/pkg/base"
	"github.com/cockroachdb/cockroach/pkg/config"
	"github.com/cockroachdb/cockroach/pkg/keys"
	"github.com/cockroachdb/cockroach/pkg/kv"
	"github.com/cockroachdb/cockroach/pkg/roachpb"
	"github.com/cockroachdb/cockroach/pkg/rpc"
	"github.com/cockroachdb/cockroach/pkg/security/username"
	"github.com/cockroachdb/cockroach/pkg/server/serverpb"
	"github.com/cockroachdb/cockroach/pkg/settings/cluster"
	"github.com/cockroachdb/cockroach/pkg/sql/catalog/descpb"
	"github.com/cockroachdb/cockroach/pkg/util/hlc"
	"github.com/cockroachdb/cockroach/pkg/util/log"
	"github.com/cockroachdb/cockroach/pkg/util/stop"
	"github.com/cockroachdb/cockroach/pkg/util/tracing"
)

type SessionType int

const (
	UnknownSession SessionType = iota
	SingleTenantSession
	MultiTenantSession
)

type TestURL struct {
	*url.URL
}

func NewTestURL(path string) TestURL {
	u, err := url.Parse(path)
	if err != nil {
		panic(err)
	}
	return TestURL{u}
}

// WithPath is a helper that allows the user of the `TestURL` to easily
// append paths to use for testing. Please be aware that your path will
// automatically be escaped for you, but if it includes any invalid hex
// escapes (eg: `%s`) it will fail silently and you'll get back a blank
// URL.
func (t *TestURL) WithPath(path string) *TestURL {
	newPath, err := url.JoinPath(t.Path, path)
	if err != nil {
		panic(err)
	}
	t.Path = newPath
	return t
}

// ApplicationLayerInterface defines accessors to the application
// layer of a test server. Tests written against this interface are
// effectively agnostic to whether they use a secondary tenant or not.
// This interface is implemented by server.Test{Tenant,Server}.
type ApplicationLayerInterface interface {
	// SQLInstanceID is the ephemeral ID assigned to a running instance of the
	// SQLServer. Each tenant can have zero or more running SQLServer instances.
	SQLInstanceID() base.SQLInstanceID

	// ServingRPCAddr returns the server's advertised address.
	ServingRPCAddr() string

	// ServingSQLAddr returns the server's advertised SQL address.
	ServingSQLAddr() string

	// SQLAddr returns the tenant's SQL address. Note that for "shared-process
	// tenants" (i.e. tenants created with TestServer.StartSharedProcessTenant),
	// simply connecting to this address connects to the system tenant, not to
	// this tenant. In order to connect to this tenant,
	// "cluster:<tenantName>/<databaseName>" needs to be added to the connection
	// string as the database name.
	SQLAddr() string

	// HTTPAddr returns the tenant's http address.
	HTTPAddr() string

	// RPCAddr returns the tenant's RPC address.
	RPCAddr() string

	// DB returns a handle to the cluster's KV interface.
	DB() *kv.DB

	// PGServer returns the tenant's *pgwire.Server as an interface{}.
	PGServer() interface{}

	// PGPreServer returns the tenant's *pgwire.PreServeConnHandler as an interface{}.
	PGPreServer() interface{}

	// DiagnosticsReporter returns the tenant's *diagnostics.Reporter as an
	// interface{}. The DiagnosticsReporter periodically phones home to report
	// diagnostics and usage.
	DiagnosticsReporter() interface{}

	// StatusServer returns the tenant's *server.SQLStatusServer as an
	// interface{}.
	StatusServer() interface{}

	// TenantStatusServer returns the tenant's *server.TenantStatusServer as an
	// interface{}.
	TenantStatusServer() interface{}

	// HTTPAuthServer returns the authserver.Server as an interface{}.
	HTTPAuthServer() interface{}

	// SQLServer returns the *sql.Server as an interface{}.
	SQLServer() interface{}

	// DistSQLServer returns the *distsql.ServerImpl as an interface{}.
	DistSQLServer() interface{}

	// SetDistSQLSpanResolver changes the SpanResolver used for DistSQL inside the
	// server's executor. The argument must be a physicalplan.SpanResolver
	// instance.
	//
	// This method exists because we cannot pass the fake span resolver with the
	// server or cluster params: the fake span resolver needs the node IDs and
	// addresses of the servers in a cluster, which are not available before we
	// start the servers.
	//
	// It is the caller's responsibility to make sure no queries are being run
	// with DistSQL at the same time.
	SetDistSQLSpanResolver(spanResolver interface{})

	// DistSenderI returns the *kvcoord.DistSender as an interface{}.
	DistSenderI() interface{}

	// InternalDB returns an isql.DB as an interface{}.
	InternalDB() interface{}

	// InternalExecutor returns a *sql.InternalExecutor as an interface{} (which
	// also implements isql.Executor if the test cannot depend on sql).
	InternalExecutor() interface{}

	// LeaseManager returns the *sql.LeaseManager as an interface{}.
	LeaseManager() interface{}

	// JobRegistry returns the *jobs.Registry as an interface{}.
	JobRegistry() interface{}

	// RPCContext returns the *rpc.Context used by the test tenant.
	RPCContext() *rpc.Context

	// AnnotateCtx annotates a context.
	AnnotateCtx(context.Context) context.Context

	// ExecutorConfig returns a copy of the tenant's ExecutorConfig.
	// The real return type is sql.ExecutorConfig.
	ExecutorConfig() interface{}

	// RangeFeedFactory returns the range feed factory used by the tenant.
	// The real return type is *rangefeed.Factory.
	RangeFeedFactory() interface{}

	// ClusterSettings returns the ClusterSettings shared by all components of
	// this tenant.
	ClusterSettings() *cluster.Settings

	// SettingsWatcher returns the *settingswatcher.SettingsWatcher used by the
	// tenant server.
	SettingsWatcher() interface{}

	// Stopper returns the stopper used by the tenant.
	Stopper() *stop.Stopper

	// Clock returns the clock used by the tenant.
	Clock() *hlc.Clock

	// SpanConfigKVAccessor returns the underlying spanconfig.KVAccessor as an
	// interface{}.
	SpanConfigKVAccessor() interface{}

	// SpanConfigReporter returns the underlying spanconfig.Reporter as an
	// interface{}.
	SpanConfigReporter() interface{}

	// SpanConfigReconciler returns the underlying spanconfig.Reconciler as an
	// interface{}.
	SpanConfigReconciler() interface{}

	// SpanConfigSQLTranslatorFactory returns the underlying
	// spanconfig.SQLTranslatorFactory as an interface{}.
	SpanConfigSQLTranslatorFactory() interface{}

	// SpanConfigSQLWatcher returns the underlying spanconfig.SQLWatcher as an
	// interface{}.
	SpanConfigSQLWatcher() interface{}

	// TestingKnobs returns the TestingKnobs in use by the test server.
	TestingKnobs() *base.TestingKnobs

	// AmbientCtx retrieves the AmbientContext for this server,
	// so that a test can instantiate additional one-off components
	// using the same context details as the server. This should not
	// be used in non-test code.
	AmbientCtx() log.AmbientContext

	// AdminURL returns the URL for the admin UI.
	AdminURL() *TestURL

	// GetUnauthenticatedHTTPClient returns an http client configured with the client TLS
	// config required by the TestServer's configuration.
	// Discourages implementer from using unauthenticated http connections
	// with verbose method name.
	GetUnauthenticatedHTTPClient() (http.Client, error)

	// GetAdminHTTPClient returns an http client which has been
	// authenticated to access Admin API methods (via a cookie).
	// The user has admin privileges.
	GetAdminHTTPClient() (http.Client, error)

	// GetAuthenticatedHTTPClient returns an http client which has been
	// authenticated to access Admin API methods (via a cookie).
	GetAuthenticatedHTTPClient(isAdmin bool, sessionType SessionType) (http.Client, error)

	// GetAuthenticatedHTTPClientAndCookie returns an http client which
	// has been authenticated to access Admin API methods and
	// the corresponding session cookie.
	GetAuthenticatedHTTPClientAndCookie(
		authUser username.SQLUsername, isAdmin bool, session SessionType,
	) (http.Client, *serverpb.SessionCookie, error)

	// GetAuthSession returns a byte array containing a valid auth
	// session.
	GetAuthSession(isAdmin bool) (*serverpb.SessionCookie, error)

	// CreateAuthUser is exported for use in tests.
	CreateAuthUser(userName username.SQLUsername, isAdmin bool) error

	// DrainClients shuts down client connections.
	DrainClients(ctx context.Context) error

	// SystemConfigProvider provides access to the system config.
	SystemConfigProvider() config.SystemConfigProvider

	// MustGetSQLCounter returns the value of a counter metric from the tenant's
	// SQL Executor. Runs in O(# of metrics) time, which is fine for test code.
	MustGetSQLCounter(name string) int64
	// MustGetSQLNetworkCounter returns the value of a counter metric from the
	// tenant's SQL server. Runs in O(# of metrics) time, which is fine for test
	// code.
	MustGetSQLNetworkCounter(name string) int64

	// Codec returns this tenant's codec (or keys.SystemSQLCodec if this is the
	// system tenant).
	Codec() keys.SQLCodec

	// RangeDescIteratorFactory returns the underlying rangedesc.IteratorFactory
	// as an interface{}.
	RangeDescIteratorFactory() interface{}

	// Tracer returns a reference to the tenant's Tracer.
	Tracer() *tracing.Tracer

	// TracerI is the same as Tracer but returns an interface{}.
	TracerI() interface{}

	// MigrationServer returns the tenant's migration server, which is used in
	// upgrade testing.
	MigrationServer() interface{}

	// CollectionFactory returns a *descs.CollectionFactory.
	CollectionFactory() interface{}

	// SystemTableIDResolver returns a catalog.SystemTableIDResolver.
	SystemTableIDResolver() interface{}

	// QueryDatabaseID provides access to the database name-to-ID conversion function
	// for use in API tests.
	QueryDatabaseID(
		ctx context.Context, userName username.SQLUsername, dbName string,
	) (descpb.ID, error)

	// QueryTableID provides access to the table name-to-ID conversion function
	// for use in API tests.
	QueryTableID(
		ctx context.Context, userName username.SQLUsername, dbName, tbName string,
	) (descpb.ID, error)

	// StatsForSpans provides access to the span stats inspection function
	// for use in API tests.
	StatsForSpan(
		ctx context.Context, span roachpb.Span,
	) (*serverpb.TableStatsResponse, error)

	// TODO(irfansharif): We'd benefit from an API to construct a *gosql.DB, or
	// better yet, a *sqlutils.SQLRunner. We use it all the time, constructing
	// it by hand each time.
}
