///
//  Generated code. Do not modify.
//  source: facility.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use facilityResponseDescriptor instead')
const FacilityResponse$json = const {
  '1': 'FacilityResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `FacilityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilityResponseDescriptor = $convert.base64Decode('ChBGYWNpbGl0eVJlc3BvbnNlEhoKCFJlc3BvbnNlGAEgASgJUghSZXNwb25zZRISCgRJc09rGAIgASgIUgRJc09rEikKBUVycm9yGAMgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use facilityRequestDescriptor instead')
const FacilityRequest$json = const {
  '1': 'FacilityRequest',
  '2': const [
    const {'1': 'FacilityId', '3': 1, '4': 1, '5': 9, '10': 'FacilityId'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'Description', '17': true},
    const {'1': 'Status', '3': 4, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 5, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 6, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 7, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
  '8': const [
    const {'1': '_Description'},
  ],
};

/// Descriptor for `FacilityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilityRequestDescriptor = $convert.base64Decode('Cg9GYWNpbGl0eVJlcXVlc3QSHgoKRmFjaWxpdHlJZBgBIAEoCVIKRmFjaWxpdHlJZBISCgROYW1lGAIgASgJUgROYW1lEiUKC0Rlc2NyaXB0aW9uGAMgASgJSABSC0Rlc2NyaXB0aW9uiAEBEiwKBlN0YXR1cxgEIAEoDjIULnV0aWxpdHkuU3RhdHVzTW9kZWxSBlN0YXR1cxIgCgtEYXRlQ3JlYXRlZBgFIAEoCVILRGF0ZUNyZWF0ZWQSIgoMRGF0ZU1vZGlmaWVkGAYgASgJUgxEYXRlTW9kaWZpZWQSKQoFRXJyb3IYByABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9yQg4KDF9EZXNjcmlwdGlvbg==');
@$core.Deprecated('Use facilityLookupModelDescriptor instead')
const FacilityLookupModel$json = const {
  '1': 'FacilityLookupModel',
  '2': const [
    const {'1': 'FacilityId', '3': 1, '4': 1, '5': 9, '10': 'FacilityId'},
  ],
};

/// Descriptor for `FacilityLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilityLookupModelDescriptor = $convert.base64Decode('ChNGYWNpbGl0eUxvb2t1cE1vZGVsEh4KCkZhY2lsaXR5SWQYASABKAlSCkZhY2lsaXR5SWQ=');
@$core.Deprecated('Use residenceFacilityLookupModelDescriptor instead')
const ResidenceFacilityLookupModel$json = const {
  '1': 'ResidenceFacilityLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResidenceFacilityLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceFacilityLookupModelDescriptor = $convert.base64Decode('ChxSZXNpZGVuY2VGYWNpbGl0eUxvb2t1cE1vZGVsEiAKC1Jlc2lkZW5jZUlkGAEgASgJUgtSZXNpZGVuY2VJZA==');
@$core.Deprecated('Use facilitiesListDescriptor instead')
const FacilitiesList$json = const {
  '1': 'FacilitiesList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.facility.FacilityRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `FacilitiesList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List facilitiesListDescriptor = $convert.base64Decode('Cg5GYWNpbGl0aWVzTGlzdBIvCgVJdGVtcxgBIAMoCzIZLmZhY2lsaXR5LkZhY2lsaXR5UmVxdWVzdFIFSXRlbXMSKQoFRXJyb3IYAiABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
