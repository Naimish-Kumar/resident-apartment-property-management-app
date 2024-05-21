///
//  Generated code. Do not modify.
//  source: building.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use buildingResponseDescriptor instead')
const BuildingResponse$json = const {
  '1': 'BuildingResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `BuildingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildingResponseDescriptor = $convert.base64Decode('ChBCdWlsZGluZ1Jlc3BvbnNlEhoKCFJlc3BvbnNlGAEgASgJUghSZXNwb25zZRISCgRJc09rGAIgASgIUgRJc09rEikKBUVycm9yGAMgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use buildingRequestDescriptor instead')
const BuildingRequest$json = const {
  '1': 'BuildingRequest',
  '2': const [
    const {'1': 'BuildingId', '3': 1, '4': 1, '5': 9, '10': 'BuildingId'},
    const {'1': 'BuildingName', '3': 2, '4': 1, '5': 9, '10': 'BuildingName'},
    const {'1': 'BuildingPrefix', '3': 3, '4': 1, '5': 9, '10': 'BuildingPrefix'},
    const {'1': 'TotalFloor', '3': 4, '4': 1, '5': 5, '10': 'TotalFloor'},
    const {'1': 'UnitPerFloor', '3': 5, '4': 1, '5': 5, '10': 'UnitPerFloor'},
    const {'1': 'Description', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'Description', '17': true},
    const {'1': 'Status', '3': 7, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 8, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 9, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 10, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'residence', '3': 11, '4': 1, '5': 11, '6': '.residence.ResidenceRequest', '10': 'residence'},
    const {'1': 'IsUnitCreated', '3': 12, '4': 1, '5': 8, '10': 'IsUnitCreated'},
  ],
  '8': const [
    const {'1': '_Description'},
  ],
};

/// Descriptor for `BuildingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildingRequestDescriptor = $convert.base64Decode('Cg9CdWlsZGluZ1JlcXVlc3QSHgoKQnVpbGRpbmdJZBgBIAEoCVIKQnVpbGRpbmdJZBIiCgxCdWlsZGluZ05hbWUYAiABKAlSDEJ1aWxkaW5nTmFtZRImCg5CdWlsZGluZ1ByZWZpeBgDIAEoCVIOQnVpbGRpbmdQcmVmaXgSHgoKVG90YWxGbG9vchgEIAEoBVIKVG90YWxGbG9vchIiCgxVbml0UGVyRmxvb3IYBSABKAVSDFVuaXRQZXJGbG9vchIlCgtEZXNjcmlwdGlvbhgGIAEoCUgAUgtEZXNjcmlwdGlvbogBARIsCgZTdGF0dXMYByABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXMSIAoLRGF0ZUNyZWF0ZWQYCCABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgJIAEoCVIMRGF0ZU1vZGlmaWVkEikKBUVycm9yGAogASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvchI5CglyZXNpZGVuY2UYCyABKAsyGy5yZXNpZGVuY2UuUmVzaWRlbmNlUmVxdWVzdFIJcmVzaWRlbmNlEiQKDUlzVW5pdENyZWF0ZWQYDCABKAhSDUlzVW5pdENyZWF0ZWRCDgoMX0Rlc2NyaXB0aW9u');
@$core.Deprecated('Use buildingLookupModelDescriptor instead')
const BuildingLookupModel$json = const {
  '1': 'BuildingLookupModel',
  '2': const [
    const {'1': 'BuildingId', '3': 1, '4': 1, '5': 9, '10': 'BuildingId'},
  ],
};

/// Descriptor for `BuildingLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildingLookupModelDescriptor = $convert.base64Decode('ChNCdWlsZGluZ0xvb2t1cE1vZGVsEh4KCkJ1aWxkaW5nSWQYASABKAlSCkJ1aWxkaW5nSWQ=');
@$core.Deprecated('Use buildingsListDescriptor instead')
const BuildingsList$json = const {
  '1': 'BuildingsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.building.BuildingRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `BuildingsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildingsListDescriptor = $convert.base64Decode('Cg1CdWlsZGluZ3NMaXN0Ei8KBUl0ZW1zGAEgAygLMhkuYnVpbGRpbmcuQnVpbGRpbmdSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
