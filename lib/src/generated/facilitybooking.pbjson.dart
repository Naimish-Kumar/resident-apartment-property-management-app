///
//  Generated code. Do not modify.
//  source: facilitybooking.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use facilityBookingResponseDescriptor instead')
const FacilityBookingResponse$json = const {
  '1': 'FacilityBookingResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `FacilityBookingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilityBookingResponseDescriptor = $convert.base64Decode('ChdGYWNpbGl0eUJvb2tpbmdSZXNwb25zZRIaCghSZXNwb25zZRgBIAEoCVIIUmVzcG9uc2USEgoESXNPaxgCIAEoCFIESXNPaxIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use facilityBookingRequestDescriptor instead')
const FacilityBookingRequest$json = const {
  '1': 'FacilityBookingRequest',
  '2': const [
    const {'1': 'FacilityBookingId', '3': 1, '4': 1, '5': 9, '10': 'FacilityBookingId'},
    const {'1': 'UserId', '3': 2, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'ResidenceId', '3': 3, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'FacilityId', '3': 4, '4': 1, '5': 9, '10': 'FacilityId'},
    const {'1': 'Date', '3': 5, '4': 1, '5': 9, '10': 'Date'},
    const {'1': 'Remark', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'Remark', '17': true},
    const {'1': 'Status', '3': 7, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 8, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 9, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 10, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'User', '3': 11, '4': 1, '5': 11, '6': '.user.UserRequest', '10': 'User'},
    const {'1': 'Facility', '3': 12, '4': 1, '5': 11, '6': '.facility.FacilityRequest', '10': 'Facility'},
    const {'1': 'Slot', '3': 13, '4': 1, '5': 11, '6': '.slot.SlotRequest', '10': 'Slot'},
    const {'1': 'SlotId', '3': 14, '4': 1, '5': 9, '10': 'SlotId'},
  ],
  '8': const [
    const {'1': '_Remark'},
  ],
};

/// Descriptor for `FacilityBookingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilityBookingRequestDescriptor = $convert.base64Decode('ChZGYWNpbGl0eUJvb2tpbmdSZXF1ZXN0EiwKEUZhY2lsaXR5Qm9va2luZ0lkGAEgASgJUhFGYWNpbGl0eUJvb2tpbmdJZBIWCgZVc2VySWQYAiABKAlSBlVzZXJJZBIgCgtSZXNpZGVuY2VJZBgDIAEoCVILUmVzaWRlbmNlSWQSHgoKRmFjaWxpdHlJZBgEIAEoCVIKRmFjaWxpdHlJZBISCgREYXRlGAUgASgJUgREYXRlEhsKBlJlbWFyaxgGIAEoCUgAUgZSZW1hcmuIAQESLAoGU3RhdHVzGAcgASgOMhQudXRpbGl0eS5TdGF0dXNNb2RlbFIGU3RhdHVzEiAKC0RhdGVDcmVhdGVkGAggASgJUgtEYXRlQ3JlYXRlZBIiCgxEYXRlTW9kaWZpZWQYCSABKAlSDERhdGVNb2RpZmllZBIpCgVFcnJvchgKIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3ISJQoEVXNlchgLIAEoCzIRLnVzZXIuVXNlclJlcXVlc3RSBFVzZXISNQoIRmFjaWxpdHkYDCABKAsyGS5mYWNpbGl0eS5GYWNpbGl0eVJlcXVlc3RSCEZhY2lsaXR5EiUKBFNsb3QYDSABKAsyES5zbG90LlNsb3RSZXF1ZXN0UgRTbG90EhYKBlNsb3RJZBgOIAEoCVIGU2xvdElkQgkKB19SZW1hcms=');
@$core.Deprecated('Use facilityBookingLookupModelDescriptor instead')
const FacilityBookingLookupModel$json = const {
  '1': 'FacilityBookingLookupModel',
  '2': const [
    const {'1': 'FacilityBookingId', '3': 1, '4': 1, '5': 9, '10': 'FacilityBookingId'},
  ],
};

/// Descriptor for `FacilityBookingLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilityBookingLookupModelDescriptor = $convert.base64Decode('ChpGYWNpbGl0eUJvb2tpbmdMb29rdXBNb2RlbBIsChFGYWNpbGl0eUJvb2tpbmdJZBgBIAEoCVIRRmFjaWxpdHlCb29raW5nSWQ=');
@$core.Deprecated('Use userFacilityBookingLookupModelDescriptor instead')
const UserFacilityBookingLookupModel$json = const {
  '1': 'UserFacilityBookingLookupModel',
  '2': const [
    const {'1': 'UserId', '3': 1, '4': 1, '5': 9, '10': 'UserId'},
  ],
};

/// Descriptor for `UserFacilityBookingLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFacilityBookingLookupModelDescriptor = $convert.base64Decode('Ch5Vc2VyRmFjaWxpdHlCb29raW5nTG9va3VwTW9kZWwSFgoGVXNlcklkGAEgASgJUgZVc2VySWQ=');
@$core.Deprecated('Use residenceFacilityBookingLookupModelDescriptor instead')
const ResidenceFacilityBookingLookupModel$json = const {
  '1': 'ResidenceFacilityBookingLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResidenceFacilityBookingLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceFacilityBookingLookupModelDescriptor = $convert.base64Decode('CiNSZXNpZGVuY2VGYWNpbGl0eUJvb2tpbmdMb29rdXBNb2RlbBIgCgtSZXNpZGVuY2VJZBgBIAEoCVILUmVzaWRlbmNlSWQ=');
@$core.Deprecated('Use facilityBookingsListDescriptor instead')
const FacilityBookingsList$json = const {
  '1': 'FacilityBookingsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.facilitybooking.FacilityBookingRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `FacilityBookingsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilityBookingsListDescriptor = $convert.base64Decode('ChRGYWNpbGl0eUJvb2tpbmdzTGlzdBI9CgVJdGVtcxgBIAMoCzInLmZhY2lsaXR5Ym9va2luZy5GYWNpbGl0eUJvb2tpbmdSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
