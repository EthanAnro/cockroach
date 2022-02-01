# Generated by genbzl

EXCLUDED_SRCS = [
  "//build/bazelutil:test_stamping.txt",
  "//docs/generated/sql/bnf:abort.html",
  "//docs/generated/sql/bnf:add_column.html",
  "//docs/generated/sql/bnf:add_constraint.html",
  "//docs/generated/sql/bnf:alter.html",
  "//docs/generated/sql/bnf:alter_changefeed.html",
  "//docs/generated/sql/bnf:alter_column.html",
  "//docs/generated/sql/bnf:alter_database.html",
  "//docs/generated/sql/bnf:alter_database_add_region.html",
  "//docs/generated/sql/bnf:alter_database_drop_region.html",
  "//docs/generated/sql/bnf:alter_database_owner.html",
  "//docs/generated/sql/bnf:alter_database_primary_region.html",
  "//docs/generated/sql/bnf:alter_database_survival_goal.html",
  "//docs/generated/sql/bnf:alter_database_to_schema.html",
  "//docs/generated/sql/bnf:alter_ddl.html",
  "//docs/generated/sql/bnf:alter_default_privileges.html",
  "//docs/generated/sql/bnf:alter_index.html",
  "//docs/generated/sql/bnf:alter_index_partition_by.html",
  "//docs/generated/sql/bnf:alter_partition.html",
  "//docs/generated/sql/bnf:alter_primary_key.html",
  "//docs/generated/sql/bnf:alter_range.html",
  "//docs/generated/sql/bnf:alter_range_relocate.html",
  "//docs/generated/sql/bnf:alter_rename_view.html",
  "//docs/generated/sql/bnf:alter_role.html",
  "//docs/generated/sql/bnf:alter_scatter.html",
  "//docs/generated/sql/bnf:alter_scatter_index.html",
  "//docs/generated/sql/bnf:alter_schema.html",
  "//docs/generated/sql/bnf:alter_sequence.html",
  "//docs/generated/sql/bnf:alter_sequence_options.html",
  "//docs/generated/sql/bnf:alter_sequence_owner.html",
  "//docs/generated/sql/bnf:alter_sequence_set_schema.html",
  "//docs/generated/sql/bnf:alter_table.html",
  "//docs/generated/sql/bnf:alter_table_locality.html",
  "//docs/generated/sql/bnf:alter_table_owner.html",
  "//docs/generated/sql/bnf:alter_table_partition_by.html",
  "//docs/generated/sql/bnf:alter_table_set_schema.html",
  "//docs/generated/sql/bnf:alter_type.html",
  "//docs/generated/sql/bnf:alter_view.html",
  "//docs/generated/sql/bnf:alter_view_owner.html",
  "//docs/generated/sql/bnf:alter_view_set_schema.html",
  "//docs/generated/sql/bnf:alter_zone_database.html",
  "//docs/generated/sql/bnf:alter_zone_index.html",
  "//docs/generated/sql/bnf:alter_zone_partition.html",
  "//docs/generated/sql/bnf:alter_zone_range.html",
  "//docs/generated/sql/bnf:alter_zone_table.html",
  "//docs/generated/sql/bnf:analyze.html",
  "//docs/generated/sql/bnf:backup.html",
  "//docs/generated/sql/bnf:begin.html",
  "//docs/generated/sql/bnf:begin_transaction.html",
  "//docs/generated/sql/bnf:cancel.html",
  "//docs/generated/sql/bnf:cancel_all_jobs.html",
  "//docs/generated/sql/bnf:cancel_job.html",
  "//docs/generated/sql/bnf:cancel_query.html",
  "//docs/generated/sql/bnf:cancel_session.html",
  "//docs/generated/sql/bnf:check_column_level.html",
  "//docs/generated/sql/bnf:check_table_level.html",
  "//docs/generated/sql/bnf:close_cursor.html",
  "//docs/generated/sql/bnf:col_qualification.html",
  "//docs/generated/sql/bnf:column_def.html",
  "//docs/generated/sql/bnf:comment.html",
  "//docs/generated/sql/bnf:commit_transaction.html",
  "//docs/generated/sql/bnf:copy_from.html",
  "//docs/generated/sql/bnf:create.html",
  "//docs/generated/sql/bnf:create_as_col_qual_list.html",
  "//docs/generated/sql/bnf:create_as_constraint_def.html",
  "//docs/generated/sql/bnf:create_changefeed.html",
  "//docs/generated/sql/bnf:create_database.html",
  "//docs/generated/sql/bnf:create_ddl.html",
  "//docs/generated/sql/bnf:create_extension.html",
  "//docs/generated/sql/bnf:create_index.html",
  "//docs/generated/sql/bnf:create_inverted_index.html",
  "//docs/generated/sql/bnf:create_replication_stream.html",
  "//docs/generated/sql/bnf:create_role.html",
  "//docs/generated/sql/bnf:create_schedule_for_backup.html",
  "//docs/generated/sql/bnf:create_schema.html",
  "//docs/generated/sql/bnf:create_sequence.html",
  "//docs/generated/sql/bnf:create_stats.html",
  "//docs/generated/sql/bnf:create_table.html",
  "//docs/generated/sql/bnf:create_table_as.html",
  "//docs/generated/sql/bnf:create_type.html",
  "//docs/generated/sql/bnf:create_view.html",
  "//docs/generated/sql/bnf:deallocate.html",
  "//docs/generated/sql/bnf:default_value_column_level.html",
  "//docs/generated/sql/bnf:delete.html",
  "//docs/generated/sql/bnf:discard.html",
  "//docs/generated/sql/bnf:drop.html",
  "//docs/generated/sql/bnf:drop_column.html",
  "//docs/generated/sql/bnf:drop_constraint.html",
  "//docs/generated/sql/bnf:drop_database.html",
  "//docs/generated/sql/bnf:drop_ddl.html",
  "//docs/generated/sql/bnf:drop_index.html",
  "//docs/generated/sql/bnf:drop_owned_by.html",
  "//docs/generated/sql/bnf:drop_role.html",
  "//docs/generated/sql/bnf:drop_schedule.html",
  "//docs/generated/sql/bnf:drop_schema.html",
  "//docs/generated/sql/bnf:drop_sequence.html",
  "//docs/generated/sql/bnf:drop_table.html",
  "//docs/generated/sql/bnf:drop_type.html",
  "//docs/generated/sql/bnf:drop_view.html",
  "//docs/generated/sql/bnf:execute.html",
  "//docs/generated/sql/bnf:experimental_audit.html",
  "//docs/generated/sql/bnf:explain.html",
  "//docs/generated/sql/bnf:explain_analyze.html",
  "//docs/generated/sql/bnf:explainable.html",
  "//docs/generated/sql/bnf:export.html",
  "//docs/generated/sql/bnf:family_def.html",
  "//docs/generated/sql/bnf:for_locking.html",
  "//docs/generated/sql/bnf:foreign_key_column_level.html",
  "//docs/generated/sql/bnf:foreign_key_table_level.html",
  "//docs/generated/sql/bnf:generic_set.html",
  "//docs/generated/sql/bnf:grant.html",
  "//docs/generated/sql/bnf:import_csv.html",
  "//docs/generated/sql/bnf:import_dump.html",
  "//docs/generated/sql/bnf:import_into.html",
  "//docs/generated/sql/bnf:index_def.html",
  "//docs/generated/sql/bnf:insert.html",
  "//docs/generated/sql/bnf:insert_rest.html",
  "//docs/generated/sql/bnf:iso_level.html",
  "//docs/generated/sql/bnf:joined_table.html",
  "//docs/generated/sql/bnf:like_table_option_list.html",
  "//docs/generated/sql/bnf:limit_clause.html",
  "//docs/generated/sql/bnf:not_null_column_level.html",
  "//docs/generated/sql/bnf:offset_clause.html",
  "//docs/generated/sql/bnf:on_conflict.html",
  "//docs/generated/sql/bnf:opt_frame_clause.html",
  "//docs/generated/sql/bnf:opt_locality.html",
  "//docs/generated/sql/bnf:opt_persistence_temp_table.html",
  "//docs/generated/sql/bnf:opt_with_storage_parameter_list.html",
  "//docs/generated/sql/bnf:pause.html",
  "//docs/generated/sql/bnf:pause_all_jobs.html",
  "//docs/generated/sql/bnf:pause_job.html",
  "//docs/generated/sql/bnf:pause_schedule.html",
  "//docs/generated/sql/bnf:preparable.html",
  "//docs/generated/sql/bnf:prepare.html",
  "//docs/generated/sql/bnf:primary_key_column_level.html",
  "//docs/generated/sql/bnf:primary_key_table_level.html",
  "//docs/generated/sql/bnf:reassign_owned_by.html",
  "//docs/generated/sql/bnf:refresh_materialized_views.html",
  "//docs/generated/sql/bnf:release_savepoint.html",
  "//docs/generated/sql/bnf:rename_column.html",
  "//docs/generated/sql/bnf:rename_constraint.html",
  "//docs/generated/sql/bnf:rename_database.html",
  "//docs/generated/sql/bnf:rename_index.html",
  "//docs/generated/sql/bnf:rename_sequence.html",
  "//docs/generated/sql/bnf:rename_table.html",
  "//docs/generated/sql/bnf:reset.html",
  "//docs/generated/sql/bnf:reset_csetting.html",
  "//docs/generated/sql/bnf:reset_session.html",
  "//docs/generated/sql/bnf:restore.html",
  "//docs/generated/sql/bnf:resume.html",
  "//docs/generated/sql/bnf:resume_all_jobs.html",
  "//docs/generated/sql/bnf:resume_job.html",
  "//docs/generated/sql/bnf:resume_schedule.html",
  "//docs/generated/sql/bnf:revoke.html",
  "//docs/generated/sql/bnf:rollback_transaction.html",
  "//docs/generated/sql/bnf:row_source_extension.html",
  "//docs/generated/sql/bnf:savepoint.html",
  "//docs/generated/sql/bnf:scrub.html",
  "//docs/generated/sql/bnf:scrub_database.html",
  "//docs/generated/sql/bnf:scrub_table.html",
  "//docs/generated/sql/bnf:select.html",
  "//docs/generated/sql/bnf:select_clause.html",
  "//docs/generated/sql/bnf:set_cluster_setting.html",
  "//docs/generated/sql/bnf:set_csetting.html",
  "//docs/generated/sql/bnf:set_exprs_internal.html",
  "//docs/generated/sql/bnf:set_local.html",
  "//docs/generated/sql/bnf:set_operation.html",
  "//docs/generated/sql/bnf:set_rest.html",
  "//docs/generated/sql/bnf:set_rest_more.html",
  "//docs/generated/sql/bnf:set_session.html",
  "//docs/generated/sql/bnf:set_transaction.html",
  "//docs/generated/sql/bnf:show_backup.html",
  "//docs/generated/sql/bnf:show_cluster_setting.html",
  "//docs/generated/sql/bnf:show_columns.html",
  "//docs/generated/sql/bnf:show_constraints.html",
  "//docs/generated/sql/bnf:show_create.html",
  "//docs/generated/sql/bnf:show_create_schedules.html",
  "//docs/generated/sql/bnf:show_databases.html",
  "//docs/generated/sql/bnf:show_default_privileges.html",
  "//docs/generated/sql/bnf:show_enums.html",
  "//docs/generated/sql/bnf:show_full_scans.html",
  "//docs/generated/sql/bnf:show_grants.html",
  "//docs/generated/sql/bnf:show_indexes.html",
  "//docs/generated/sql/bnf:show_jobs.html",
  "//docs/generated/sql/bnf:show_keys.html",
  "//docs/generated/sql/bnf:show_locality.html",
  "//docs/generated/sql/bnf:show_partitions.html",
  "//docs/generated/sql/bnf:show_range_for_row.html",
  "//docs/generated/sql/bnf:show_ranges.html",
  "//docs/generated/sql/bnf:show_regions.html",
  "//docs/generated/sql/bnf:show_roles.html",
  "//docs/generated/sql/bnf:show_savepoint_status.html",
  "//docs/generated/sql/bnf:show_schedules.html",
  "//docs/generated/sql/bnf:show_schemas.html",
  "//docs/generated/sql/bnf:show_sequences.html",
  "//docs/generated/sql/bnf:show_session.html",
  "//docs/generated/sql/bnf:show_sessions.html",
  "//docs/generated/sql/bnf:show_statements.html",
  "//docs/generated/sql/bnf:show_stats.html",
  "//docs/generated/sql/bnf:show_survival_goal.html",
  "//docs/generated/sql/bnf:show_tables.html",
  "//docs/generated/sql/bnf:show_trace.html",
  "//docs/generated/sql/bnf:show_transactions.html",
  "//docs/generated/sql/bnf:show_types.html",
  "//docs/generated/sql/bnf:show_users.html",
  "//docs/generated/sql/bnf:show_var.html",
  "//docs/generated/sql/bnf:show_zone.html",
  "//docs/generated/sql/bnf:simple_select_clause.html",
  "//docs/generated/sql/bnf:sort_clause.html",
  "//docs/generated/sql/bnf:split_index_at.html",
  "//docs/generated/sql/bnf:split_table_at.html",
  "//docs/generated/sql/bnf:stmt.html",
  "//docs/generated/sql/bnf:stmt_block.html",
  "//docs/generated/sql/bnf:table_clause.html",
  "//docs/generated/sql/bnf:table_constraint.html",
  "//docs/generated/sql/bnf:table_ref.html",
  "//docs/generated/sql/bnf:transaction.html",
  "//docs/generated/sql/bnf:truncate.html",
  "//docs/generated/sql/bnf:unique_column_level.html",
  "//docs/generated/sql/bnf:unique_table_level.html",
  "//docs/generated/sql/bnf:unsplit_index_at.html",
  "//docs/generated/sql/bnf:unsplit_table_at.html",
  "//docs/generated/sql/bnf:update.html",
  "//docs/generated/sql/bnf:upsert.html",
  "//docs/generated/sql/bnf:use.html",
  "//docs/generated/sql/bnf:validate_constraint.html",
  "//docs/generated/sql/bnf:values_clause.html",
  "//docs/generated/sql/bnf:window_definition.html",
  "//docs/generated/sql/bnf:with_clause.html",
  "//pkg/cmd/roachtest/prometheus:prometheus_mocks_gomock_prog.go",
  "//pkg/cmd/roachtest/tests:mocks_drt_gomock_prog.go",
  "//pkg/kv/kvclient/kvcoord:mock_kvcoord_gomock_prog.go",
  "//pkg/kv/kvclient/rangecache/rangecachemock:mock_rangecache_gomock_prog.go",
  "//pkg/kv/kvclient/rangefeed:mock_rangefeed_gomock_prog.go",
  "//pkg/roachpb/roachpbmock:mock_roachpb_gomock_prog.go",
  "//pkg/roachpb:batch_generated-gen.go",
  "//pkg/security/certmgr:mocks_certmgr_gomock_prog.go",
  "//pkg/sql/opt/optgen/lang:expr-gen.og.go",
  "//pkg/sql/opt/optgen/lang:operator-gen.og.go",
  "//pkg/sql/schemachanger/scexec:mock_scexec_gomock_prog.go",
  "//pkg/sql:gen-reports-TxnStateTransitions_stateNoTxn_write_reports.go",
  "//pkg/testutils/lint/passes/errcheck:errcheck_excludes.txt",
  "//pkg/ui/distccl:assets.tar.gz",
  "//pkg/ui/distoss:assets.tar.gz",
  "//pkg/ui/workspaces/cluster-ui:dist/js/main.js",
  "//pkg/ui/workspaces/cluster-ui:dist/types/NotificationMessage/NotificationMessage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/NotificationMessage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/Notifications/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/Notifications/notificationTypes.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/Notifications/notifications.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/anchor/anchor.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/anchor/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/basePath.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/fetchData.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/livenessApi.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/nodesApi.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/sessionsApi.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/sqlStatsApi.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/statementDiagnosticsApi.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/statementsApi.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/api/terminateQueryApi.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/badge/badge.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/badge/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/barChartFactory.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/barCharts.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/genericBarChart.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/latencyBreakdown.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/numericStatLegend.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/rowsBreakdown.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/barCharts/utils.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/breadcrumbs/breadcrumbs.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/breadcrumbs/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/button/button.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/button/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/columnsSelector/columnsSelector.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/common/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/databaseDetailsPage/databaseDetailsPage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/databaseDetailsPage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/databaseTablePage/databaseTablePage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/databaseTablePage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/databasesPage/databasesPage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/databasesPage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/dateRange/dateRange.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/dateRange/dateRange.fixtures.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/dateRange/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/demo/demoFetch.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/downloadFile/downloadFile.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/downloadFile/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/dropdown/dropdown.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/dropdown/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/empty/emptyPanel/emptyPanel.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/empty/emptyTable/emptyTable.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/empty/emptyTable/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/empty/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/highlightedText/highlightedText.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/highlightedText/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/backIcon.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/caretDown.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/caretRight.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/circleFilled.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/cockroachLabsLockupIcon.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/databaseIcon.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/spin.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/icon/stackIcon.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/indexDetailsPage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/indexDetailsPage/indexDetailsPage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/loading/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/loading/loading.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/modal/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/modal/modal.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/multiSelectCheckbox/multiSelectCheckbox.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/network/identity.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/network/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/nodes/getDisplayName.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/nodes/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/nodes/noConnection.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/nodes/nodeCapacityStats.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/nodes/nodeSummaryStats.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/outsideEventHandler/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/pageConfig/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/pageConfig/pageConfig.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/pagination/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/pagination/pagination.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/pagination/resultsPerPageLabel.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/protobufInit.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/queryFilter/filter.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/queryFilter/filterClasses.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/queryFilter/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/search/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/search/search.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionDetails.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionDetailsConnected.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionDetailsPage.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionsPage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionsPage.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionsPageConnected.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionsTable.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/sessionsTableContent.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/terminateQueryModal.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sessions/terminateSessionModal.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/settings/booleanSetting.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/settings/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/sortedtable.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/tableHead/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/tableHead/tableHead.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/tableRow/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/tableRow/rowCell.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/tableRow/tableRow.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/tableSpinner/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sortedtable/tableSpinner/tableSpinner.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sql/box.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sql/highlight.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sql/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sqlActivity/clearStats.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/sqlActivity/errorComponent.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/diagnostics/diagnosticsUtils.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/diagnostics/diagnosticsView.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/planView/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/planView/planTooltips.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/planView/planView.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/planView/planView.fixtures.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/statementDetails.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/statementDetails.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/statementDetails.selectors.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementDetails/statementDetailsConnected.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsDiagnostics/activateStatementDiagnosticsModal.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsDiagnostics/diagnosticStatusBadge.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsDiagnostics/diagnosticStatuses.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsDiagnostics/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsPage/emptyStatementsPlaceholder.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsPage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsPage/statementsPage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsPage/statementsPage.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsPage/statementsPage.selectors.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsPage/statementsPageConnected.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsTable/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsTable/statementsTable.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statementsTable/statementsTableContent.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/statsTableUtil/statsTableUtil.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/analytics/analytics.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/analytics/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/liveness/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/liveness/liveness.fixtures.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/liveness/liveness.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/liveness/liveness.sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/liveness/liveness.selectors.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/liveness/nodeLivenessStatus.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/localStorage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/localStorage/localStorage.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/localStorage/localStorage.saga.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/nodes/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/nodes/nodes.fixtures.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/nodes/nodes.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/nodes/nodes.sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/nodes/nodes.selectors.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/notifications/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/notifications/notifications.sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/reducers.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sessions/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sessions/sessions.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sessions/sessions.sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sessions/sessions.selectors.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sqlStats/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sqlStats/sqlStats.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sqlStats/sqlStats.sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/sqlStats/sqlStats.selector.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/statementDiagnostics/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/statementDiagnostics/statementDiagnostics.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/statementDiagnostics/statementDiagnostics.sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/statementDiagnostics/statementDiagnostics.selectors.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/terminateQuery/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/terminateQuery/terminateQuery.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/terminateQuery/terminateQuery.sagas.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/uiConfig/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/uiConfig/uiConfig.reducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/utils/constants.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/utils/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/utils/noopReducer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/store/utils/sagaEffects/throttleWithReset.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/storybook/decorators/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/storybook/decorators/withBackground.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/storybook/decorators/withRouterProvider.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/storybook/fixtures/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/storybook/fixtures/randomName.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/storybook/fixtures/randomPrivilege.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/storybook/fixtures/randomRole.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/summaryCard/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/table/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/table/table.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/tableStatistics/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/tableStatistics/tableStatistics.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/test-utils/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/test-utils/testStoreProvider.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/text/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/text/text.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/timeScaleDropdown/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/timeScaleDropdown/rangeSelect.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/timeScaleDropdown/timeFrameControls.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/timeScaleDropdown/timeScaleDropdown.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/timeScaleDropdown/timeScaleTypes.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/timeScaleDropdown/utils.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionDetails/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionDetails/transactionDetails.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionDetails/transactionDetails.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionDetails/transactionDetailsClasses.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionDetails/transactionDetailsConnected.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/emptyTransactionsPlaceholder.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/transactions.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/transactionsPage.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/transactionsPage.selectors.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/transactionsPageClasses.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/transactionsPageConnected.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsPage/utils.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsTable/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsTable/transactionsBarCharts.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsTable/transactionsCells/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsTable/transactionsCells/transactionsCells.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsTable/transactionsTable.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsTable/transactionsTableClasses.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/transactionsTable/utils.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/appStats/appStats.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/appStats/appStats.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/appStats/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/arrays.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/constants.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/convert.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/dataFromServer.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/docs.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/find.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/fixLong.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/format.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/formatDate.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/formatNumber.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/intersperse.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/pick.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/proto.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/query/index.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/query/query.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/requestError.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/sql/summarize.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/totalWorkload.d.ts",
  "//pkg/ui/workspaces/cluster-ui:dist/types/util/totalWorkload.fixture.d.ts",
  "//pkg/ui/workspaces/cluster-ui:eslint.sh",
  "//pkg/ui/workspaces/cluster-ui:eslint_loader.js",
  "//pkg/ui/workspaces/cluster-ui:eslint_require_patch.js",
  "//pkg/ui/workspaces/db-console/ccl/src/js:protos.d.ts",
  "//pkg/ui/workspaces/db-console/ccl/src/js:protos.js",
  "//pkg/ui/workspaces/db-console/src/js:protos.d.ts",
  "//pkg/ui/workspaces/db-console/src/js:protos.js",
  "//pkg/ui/workspaces/db-console:eslint.sh",
  "//pkg/ui/workspaces/db-console:eslint_loader.js",
  "//pkg/ui/workspaces/db-console:eslint_require_patch.js",
  "//pkg/ui/workspaces/db-console:stylint.sh",
  "//pkg/ui/workspaces/db-console:stylint_loader.js",
  "//pkg/ui/workspaces/db-console:stylint_require_patch.js",
  "//pkg/ui:dist_vendor/list.min.js",
  "//pkg/ui:index.html",
  "//pkg/util/buildutil:gen-crdb_test_off.go",
  "//pkg/util/buildutil:gen-crdb_test_on.go",
  "//pkg/util/log:mock_logsink_gomock_prog.go",
]
