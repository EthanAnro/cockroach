// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: clusterversion/cluster_version.proto

package clusterversion

import (
	fmt "fmt"
	roachpb "github.com/cockroachdb/cockroach/pkg/roachpb"
	_ "github.com/gogo/protobuf/gogoproto"
	proto "github.com/gogo/protobuf/proto"
	io "io"
	math "math"
	math_bits "math/bits"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.GoGoProtoPackageIsVersion3 // please upgrade the proto package

// ClusterVersion represents a cluster's "active version". It is returned by the
// Version cluster setting. Its IsActive() method can be used to determine if a
// particular migration is to be considered enabled or disabled.
type ClusterVersion struct {
	// The version of functionality in use in the cluster. This value must
	// monotonically increase.
	roachpb.Version `protobuf:"bytes,2,opt,name=active_version,json=activeVersion,proto3,embedded=active_version" json:"active_version"`
}

func (m *ClusterVersion) Reset()      { *m = ClusterVersion{} }
func (*ClusterVersion) ProtoMessage() {}
func (*ClusterVersion) Descriptor() ([]byte, []int) {
	return fileDescriptor_de779287b07119cc, []int{0}
}
func (m *ClusterVersion) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *ClusterVersion) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	b = b[:cap(b)]
	n, err := m.MarshalToSizedBuffer(b)
	if err != nil {
		return nil, err
	}
	return b[:n], nil
}
func (m *ClusterVersion) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ClusterVersion.Merge(m, src)
}
func (m *ClusterVersion) XXX_Size() int {
	return m.Size()
}
func (m *ClusterVersion) XXX_DiscardUnknown() {
	xxx_messageInfo_ClusterVersion.DiscardUnknown(m)
}

var xxx_messageInfo_ClusterVersion proto.InternalMessageInfo

func init() {
	proto.RegisterType((*ClusterVersion)(nil), "cockroach.clusterversion.ClusterVersion")
}

func init() {
	proto.RegisterFile("clusterversion/cluster_version.proto", fileDescriptor_de779287b07119cc)
}

var fileDescriptor_de779287b07119cc = []byte{
	// 212 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x52, 0x49, 0xce, 0x29, 0x2d,
	0x2e, 0x49, 0x2d, 0x2a, 0x4b, 0x2d, 0x2a, 0xce, 0xcc, 0xcf, 0xd3, 0x87, 0x72, 0xe3, 0xa1, 0x7c,
	0xbd, 0x82, 0xa2, 0xfc, 0x92, 0x7c, 0x21, 0x89, 0xe4, 0xfc, 0xe4, 0xec, 0xa2, 0xfc, 0xc4, 0xe4,
	0x0c, 0x3d, 0x54, 0xf5, 0x52, 0x62, 0x60, 0xd1, 0x82, 0x24, 0xfd, 0xdc, 0xd4, 0x92, 0xc4, 0x94,
	0xc4, 0x92, 0x44, 0x88, 0x0e, 0x29, 0x91, 0xf4, 0xfc, 0xf4, 0x7c, 0x30, 0x53, 0x1f, 0xc4, 0x82,
	0x88, 0x2a, 0xe5, 0x72, 0xf1, 0x39, 0x43, 0xf4, 0x87, 0x41, 0xf4, 0x0b, 0x79, 0x73, 0xf1, 0x25,
	0x26, 0x97, 0x64, 0x96, 0xa5, 0xc2, 0x6c, 0x94, 0x60, 0x52, 0x60, 0xd4, 0xe0, 0x36, 0x92, 0xd2,
	0x43, 0x58, 0x09, 0xb5, 0x42, 0x0f, 0xaa, 0xc7, 0x89, 0xe3, 0xc4, 0x3d, 0x79, 0x86, 0x0b, 0xf7,
	0xe4, 0x19, 0x83, 0x78, 0x21, 0x7a, 0xa1, 0x12, 0x56, 0x1c, 0x33, 0x16, 0xc8, 0x33, 0xbc, 0x58,
	0x20, 0xcf, 0xe8, 0xc5, 0xc2, 0xc1, 0x28, 0xc0, 0xe4, 0x64, 0x70, 0xe2, 0xa1, 0x1c, 0xc3, 0x89,
	0x47, 0x72, 0x8c, 0x17, 0x1e, 0xc9, 0x31, 0xde, 0x78, 0x24, 0xc7, 0xf8, 0xe0, 0x91, 0x1c, 0xe3,
	0x84, 0xc7, 0x72, 0x0c, 0x17, 0x1e, 0xcb, 0x31, 0xdc, 0x78, 0x2c, 0xc7, 0x10, 0xc5, 0x87, 0xea,
	0x9d, 0x24, 0x36, 0xb0, 0x3b, 0x8d, 0x01, 0x01, 0x00, 0x00, 0xff, 0xff, 0x7d, 0xac, 0xaa, 0x79,
	0x17, 0x01, 0x00, 0x00,
}

func (this *ClusterVersion) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*ClusterVersion)
	if !ok {
		that2, ok := that.(ClusterVersion)
		if ok {
			that1 = &that2
		} else {
			return false
		}
	}
	if that1 == nil {
		return this == nil
	} else if this == nil {
		return false
	}
	if !this.Version.Equal(&that1.Version) {
		return false
	}
	return true
}
func (m *ClusterVersion) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *ClusterVersion) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *ClusterVersion) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	{
		size, err := m.Version.MarshalToSizedBuffer(dAtA[:i])
		if err != nil {
			return 0, err
		}
		i -= size
		i = encodeVarintClusterVersion(dAtA, i, uint64(size))
	}
	i--
	dAtA[i] = 0x12
	return len(dAtA) - i, nil
}

func encodeVarintClusterVersion(dAtA []byte, offset int, v uint64) int {
	offset -= sovClusterVersion(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *ClusterVersion) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	l = m.Version.Size()
	n += 1 + l + sovClusterVersion(uint64(l))
	return n
}

func sovClusterVersion(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozClusterVersion(x uint64) (n int) {
	return sovClusterVersion(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (m *ClusterVersion) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowClusterVersion
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: ClusterVersion: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: ClusterVersion: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 2:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Version", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowClusterVersion
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				msglen |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if msglen < 0 {
				return ErrInvalidLengthClusterVersion
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthClusterVersion
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			if err := m.Version.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipClusterVersion(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthClusterVersion
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func skipClusterVersion(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowClusterVersion
			}
			if iNdEx >= l {
				return 0, io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= (uint64(b) & 0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		wireType := int(wire & 0x7)
		switch wireType {
		case 0:
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowClusterVersion
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				iNdEx++
				if dAtA[iNdEx-1] < 0x80 {
					break
				}
			}
		case 1:
			iNdEx += 8
		case 2:
			var length int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowClusterVersion
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				length |= (int(b) & 0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if length < 0 {
				return 0, ErrInvalidLengthClusterVersion
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupClusterVersion
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthClusterVersion
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthClusterVersion        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowClusterVersion          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupClusterVersion = fmt.Errorf("proto: unexpected end of group")
)
