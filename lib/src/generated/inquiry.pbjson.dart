///
//  Generated code. Do not modify.
//  source: inquiry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use inquiryResponseDescriptor instead')
const InquiryResponse$json = const {
  '1': 'InquiryResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `InquiryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inquiryResponseDescriptor = $convert.base64Decode('Cg9JbnF1aXJ5UmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEhIKBElzT2sYAiABKAhSBElzT2sSKQoFRXJyb3IYAyABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use inquiryRequestDescriptor instead')
const InquiryRequest$json = const {
  '1': 'InquiryRequest',
  '2': const [
    const {'1': 'InquiryId', '3': 1, '4': 1, '5': 9, '10': 'InquiryId'},
    const {'1': 'Subject', '3': 2, '4': 1, '5': 9, '10': 'Subject'},
    const {'1': 'Message', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'Message', '17': true},
    const {'1': 'Status', '3': 4, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 5, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 6, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 7, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'ResidenceId', '3': 8, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
  '8': const [
    const {'1': '_Message'},
  ],
};

/// Descriptor for `InquiryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inquiryRequestDescriptor = $convert.base64Decode('Cg5JbnF1aXJ5UmVxdWVzdBIcCglJbnF1aXJ5SWQYASABKAlSCUlucXVpcnlJZBIYCgdTdWJqZWN0GAIgASgJUgdTdWJqZWN0Eh0KB01lc3NhZ2UYAyABKAlIAFIHTWVzc2FnZYgBARIsCgZTdGF0dXMYBCABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXMSIAoLRGF0ZUNyZWF0ZWQYBSABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgGIAEoCVIMRGF0ZU1vZGlmaWVkEikKBUVycm9yGAcgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvchIgCgtSZXNpZGVuY2VJZBgIIAEoCVILUmVzaWRlbmNlSWRCCgoIX01lc3NhZ2U=');
@$core.Deprecated('Use inquiryLookupModelDescriptor instead')
const InquiryLookupModel$json = const {
  '1': 'InquiryLookupModel',
  '2': const [
    const {'1': 'InquiryId', '3': 1, '4': 1, '5': 9, '10': 'InquiryId'},
  ],
};

/// Descriptor for `InquiryLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inquiryLookupModelDescriptor = $convert.base64Decode('ChJJbnF1aXJ5TG9va3VwTW9kZWwSHAoJSW5xdWlyeUlkGAEgASgJUglJbnF1aXJ5SWQ=');
@$core.Deprecated('Use resInquiryLookupModelDescriptor instead')
const ResInquiryLookupModel$json = const {
  '1': 'ResInquiryLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResInquiryLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resInquiryLookupModelDescriptor = $convert.base64Decode('ChVSZXNJbnF1aXJ5TG9va3VwTW9kZWwSIAoLUmVzaWRlbmNlSWQYASABKAlSC1Jlc2lkZW5jZUlk');
@$core.Deprecated('Use inquirysListDescriptor instead')
const InquirysList$json = const {
  '1': 'InquirysList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.inquiry.InquiryRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `InquirysList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inquirysListDescriptor = $convert.base64Decode('CgxJbnF1aXJ5c0xpc3QSLQoFSXRlbXMYASADKAsyFy5pbnF1aXJ5LklucXVpcnlSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
