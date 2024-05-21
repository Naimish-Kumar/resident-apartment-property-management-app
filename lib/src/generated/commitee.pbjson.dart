///
//  Generated code. Do not modify.
//  source: commitee.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use commiteeResponseDescriptor instead')
const CommiteeResponse$json = const {
  '1': 'CommiteeResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `CommiteeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commiteeResponseDescriptor = $convert.base64Decode('ChBDb21taXRlZVJlc3BvbnNlEhoKCFJlc3BvbnNlGAEgASgJUghSZXNwb25zZRISCgRJc09rGAIgASgIUgRJc09rEikKBUVycm9yGAMgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use commiteeRequestDescriptor instead')
const CommiteeRequest$json = const {
  '1': 'CommiteeRequest',
  '2': const [
    const {'1': 'CommiteeId', '3': 1, '4': 1, '5': 9, '10': 'CommiteeId'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Unit', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'Unit', '17': true},
    const {'1': 'Position', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'Position', '17': true},
    const {'1': 'ContactNumber', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'ContactNumber', '17': true},
    const {'1': 'DateCreated', '3': 6, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 7, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 8, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'ResidenceId', '3': 9, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
  '8': const [
    const {'1': '_Unit'},
    const {'1': '_Position'},
    const {'1': '_ContactNumber'},
  ],
};

/// Descriptor for `CommiteeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commiteeRequestDescriptor = $convert.base64Decode('Cg9Db21taXRlZVJlcXVlc3QSHgoKQ29tbWl0ZWVJZBgBIAEoCVIKQ29tbWl0ZWVJZBISCgROYW1lGAIgASgJUgROYW1lEhcKBFVuaXQYAyABKAlIAFIEVW5pdIgBARIfCghQb3NpdGlvbhgEIAEoCUgBUghQb3NpdGlvbogBARIpCg1Db250YWN0TnVtYmVyGAUgASgJSAJSDUNvbnRhY3ROdW1iZXKIAQESIAoLRGF0ZUNyZWF0ZWQYBiABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgHIAEoCVIMRGF0ZU1vZGlmaWVkEikKBUVycm9yGAggASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvchIgCgtSZXNpZGVuY2VJZBgJIAEoCVILUmVzaWRlbmNlSWRCBwoFX1VuaXRCCwoJX1Bvc2l0aW9uQhAKDl9Db250YWN0TnVtYmVy');
@$core.Deprecated('Use commiteeLookupModelDescriptor instead')
const CommiteeLookupModel$json = const {
  '1': 'CommiteeLookupModel',
  '2': const [
    const {'1': 'CommiteeId', '3': 1, '4': 1, '5': 9, '10': 'CommiteeId'},
  ],
};

/// Descriptor for `CommiteeLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commiteeLookupModelDescriptor = $convert.base64Decode('ChNDb21taXRlZUxvb2t1cE1vZGVsEh4KCkNvbW1pdGVlSWQYASABKAlSCkNvbW1pdGVlSWQ=');
@$core.Deprecated('Use resCommiteeLookupModelDescriptor instead')
const ResCommiteeLookupModel$json = const {
  '1': 'ResCommiteeLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResCommiteeLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resCommiteeLookupModelDescriptor = $convert.base64Decode('ChZSZXNDb21taXRlZUxvb2t1cE1vZGVsEiAKC1Jlc2lkZW5jZUlkGAEgASgJUgtSZXNpZGVuY2VJZA==');
@$core.Deprecated('Use commiteesListDescriptor instead')
const CommiteesList$json = const {
  '1': 'CommiteesList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.commitee.CommiteeRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `CommiteesList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commiteesListDescriptor = $convert.base64Decode('Cg1Db21taXRlZXNMaXN0Ei8KBUl0ZW1zGAEgAygLMhkuY29tbWl0ZWUuQ29tbWl0ZWVSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
