///
//  Generated code. Do not modify.
//  source: panic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use panicResponseDescriptor instead')
const PanicResponse$json = const {
  '1': 'PanicResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `PanicResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List panicResponseDescriptor = $convert.base64Decode('Cg1QYW5pY1Jlc3BvbnNlEhoKCFJlc3BvbnNlGAEgASgJUghSZXNwb25zZRISCgRJc09rGAIgASgIUgRJc09rEikKBUVycm9yGAMgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use panicRequestDescriptor instead')
const PanicRequest$json = const {
  '1': 'PanicRequest',
  '2': const [
    const {'1': 'PanicId', '3': 1, '4': 1, '5': 9, '10': 'PanicId'},
    const {'1': 'UnitId', '3': 2, '4': 1, '5': 9, '10': 'UnitId'},
    const {'1': 'User', '3': 3, '4': 1, '5': 9, '10': 'User'},
    const {'1': 'Message', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'Message', '17': true},
    const {'1': 'DateCreated', '3': 5, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'Error', '3': 6, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'ResidenceId', '3': 7, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'MobileNumber', '3': 8, '4': 1, '5': 9, '10': 'MobileNumber'},
  ],
  '8': const [
    const {'1': '_Message'},
  ],
};

/// Descriptor for `PanicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List panicRequestDescriptor = $convert.base64Decode('CgxQYW5pY1JlcXVlc3QSGAoHUGFuaWNJZBgBIAEoCVIHUGFuaWNJZBIWCgZVbml0SWQYAiABKAlSBlVuaXRJZBISCgRVc2VyGAMgASgJUgRVc2VyEh0KB01lc3NhZ2UYBCABKAlIAFIHTWVzc2FnZYgBARIgCgtEYXRlQ3JlYXRlZBgFIAEoCVILRGF0ZUNyZWF0ZWQSKQoFRXJyb3IYBiABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9yEiAKC1Jlc2lkZW5jZUlkGAcgASgJUgtSZXNpZGVuY2VJZBIiCgxNb2JpbGVOdW1iZXIYCCABKAlSDE1vYmlsZU51bWJlckIKCghfTWVzc2FnZQ==');
@$core.Deprecated('Use panicLookupModelDescriptor instead')
const PanicLookupModel$json = const {
  '1': 'PanicLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'PanicId', '3': 2, '4': 1, '5': 9, '10': 'PanicId'},
  ],
};

/// Descriptor for `PanicLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List panicLookupModelDescriptor = $convert.base64Decode('ChBQYW5pY0xvb2t1cE1vZGVsEiAKC1Jlc2lkZW5jZUlkGAEgASgJUgtSZXNpZGVuY2VJZBIYCgdQYW5pY0lkGAIgASgJUgdQYW5pY0lk');
@$core.Deprecated('Use panicsListDescriptor instead')
const PanicsList$json = const {
  '1': 'PanicsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.panic.PanicRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `PanicsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List panicsListDescriptor = $convert.base64Decode('CgpQYW5pY3NMaXN0EikKBUl0ZW1zGAEgAygLMhMucGFuaWMuUGFuaWNSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
