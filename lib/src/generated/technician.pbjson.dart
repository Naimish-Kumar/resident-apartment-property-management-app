///
//  Generated code. Do not modify.
//  source: technician.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use technicianResponseDescriptor instead')
const TechnicianResponse$json = const {
  '1': 'TechnicianResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `TechnicianResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List technicianResponseDescriptor = $convert.base64Decode('ChJUZWNobmljaWFuUmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEhIKBElzT2sYAiABKAhSBElzT2sSKQoFRXJyb3IYAyABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use technicianRequestDescriptor instead')
const TechnicianRequest$json = const {
  '1': 'TechnicianRequest',
  '2': const [
    const {'1': 'TechnicianId', '3': 1, '4': 1, '5': 9, '10': 'TechnicianId'},
    const {'1': 'TechnicianUserId', '3': 2, '4': 1, '5': 9, '10': 'TechnicianUserId'},
    const {'1': 'ManagementId', '3': 3, '4': 1, '5': 9, '10': 'ManagementId'},
    const {'1': 'JobTitle', '3': 4, '4': 1, '5': 9, '10': 'JobTitle'},
    const {'1': 'Description', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'Description', '17': true},
    const {'1': 'Status', '3': 6, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 7, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 8, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 9, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'TechnicianName', '3': 10, '4': 1, '5': 9, '10': 'TechnicianName'},
    const {'1': 'Priorities', '3': 11, '4': 1, '5': 14, '6': '.utility.PrioritiesModel', '10': 'Priorities'},
    const {'1': 'Proof', '3': 12, '4': 1, '5': 12, '10': 'Proof'},
    const {'1': 'TechnicianDocs', '3': 13, '4': 3, '5': 11, '6': '.technician.TechnicianDocsModel', '10': 'TechnicianDocs'},
    const {'1': 'Remark', '3': 14, '4': 1, '5': 9, '10': 'Remark'},
    const {'1': 'isViewed', '3': 15, '4': 1, '5': 8, '10': 'isViewed'},
  ],
  '8': const [
    const {'1': '_Description'},
  ],
};

/// Descriptor for `TechnicianRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List technicianRequestDescriptor = $convert.base64Decode('ChFUZWNobmljaWFuUmVxdWVzdBIiCgxUZWNobmljaWFuSWQYASABKAlSDFRlY2huaWNpYW5JZBIqChBUZWNobmljaWFuVXNlcklkGAIgASgJUhBUZWNobmljaWFuVXNlcklkEiIKDE1hbmFnZW1lbnRJZBgDIAEoCVIMTWFuYWdlbWVudElkEhoKCEpvYlRpdGxlGAQgASgJUghKb2JUaXRsZRIlCgtEZXNjcmlwdGlvbhgFIAEoCUgAUgtEZXNjcmlwdGlvbogBARIsCgZTdGF0dXMYBiABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXMSIAoLRGF0ZUNyZWF0ZWQYByABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgIIAEoCVIMRGF0ZU1vZGlmaWVkEikKBUVycm9yGAkgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvchImCg5UZWNobmljaWFuTmFtZRgKIAEoCVIOVGVjaG5pY2lhbk5hbWUSOAoKUHJpb3JpdGllcxgLIAEoDjIYLnV0aWxpdHkuUHJpb3JpdGllc01vZGVsUgpQcmlvcml0aWVzEhQKBVByb29mGAwgASgMUgVQcm9vZhJHCg5UZWNobmljaWFuRG9jcxgNIAMoCzIfLnRlY2huaWNpYW4uVGVjaG5pY2lhbkRvY3NNb2RlbFIOVGVjaG5pY2lhbkRvY3MSFgoGUmVtYXJrGA4gASgJUgZSZW1hcmsSGgoIaXNWaWV3ZWQYDyABKAhSCGlzVmlld2VkQg4KDF9EZXNjcmlwdGlvbg==');
@$core.Deprecated('Use technicianLookupModelDescriptor instead')
const TechnicianLookupModel$json = const {
  '1': 'TechnicianLookupModel',
  '2': const [
    const {'1': 'TechnicianId', '3': 1, '4': 1, '5': 9, '10': 'TechnicianId'},
  ],
};

/// Descriptor for `TechnicianLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List technicianLookupModelDescriptor = $convert.base64Decode('ChVUZWNobmljaWFuTG9va3VwTW9kZWwSIgoMVGVjaG5pY2lhbklkGAEgASgJUgxUZWNobmljaWFuSWQ=');
@$core.Deprecated('Use techniciansListDescriptor instead')
const TechniciansList$json = const {
  '1': 'TechniciansList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.technician.TechnicianRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `TechniciansList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List techniciansListDescriptor = $convert.base64Decode('Cg9UZWNobmljaWFuc0xpc3QSMwoFSXRlbXMYASADKAsyHS50ZWNobmljaWFuLlRlY2huaWNpYW5SZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use technicianDocsModelDescriptor instead')
const TechnicianDocsModel$json = const {
  '1': 'TechnicianDocsModel',
  '2': const [
    const {'1': 'TechnicianDocId', '3': 1, '4': 1, '5': 9, '10': 'TechnicianDocId'},
    const {'1': 'File', '3': 2, '4': 1, '5': 12, '10': 'File'},
    const {'1': 'FileType', '3': 3, '4': 1, '5': 9, '10': 'FileType'},
    const {'1': 'FileName', '3': 4, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'Technician', '3': 5, '4': 1, '5': 11, '6': '.technician.TechnicianRequest', '10': 'Technician'},
    const {'1': 'Error', '3': 6, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `TechnicianDocsModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List technicianDocsModelDescriptor = $convert.base64Decode('ChNUZWNobmljaWFuRG9jc01vZGVsEigKD1RlY2huaWNpYW5Eb2NJZBgBIAEoCVIPVGVjaG5pY2lhbkRvY0lkEhIKBEZpbGUYAiABKAxSBEZpbGUSGgoIRmlsZVR5cGUYAyABKAlSCEZpbGVUeXBlEhoKCEZpbGVOYW1lGAQgASgJUghGaWxlTmFtZRI9CgpUZWNobmljaWFuGAUgASgLMh0udGVjaG5pY2lhbi5UZWNobmljaWFuUmVxdWVzdFIKVGVjaG5pY2lhbhIpCgVFcnJvchgGIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
