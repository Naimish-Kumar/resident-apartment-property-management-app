///
//  Generated code. Do not modify.
//  source: complaint.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use complaintResponseDescriptor instead')
const ComplaintResponse$json = const {
  '1': 'ComplaintResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ComplaintResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complaintResponseDescriptor = $convert.base64Decode('ChFDb21wbGFpbnRSZXNwb25zZRIaCghSZXNwb25zZRgBIAEoCVIIUmVzcG9uc2USEgoESXNPaxgCIAEoCFIESXNPaxIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use complaintRequestDescriptor instead')
const ComplaintRequest$json = const {
  '1': 'ComplaintRequest',
  '2': const [
    const {'1': 'ComplaintId', '3': 1, '4': 1, '5': 9, '10': 'ComplaintId'},
    const {'1': 'User', '3': 2, '4': 1, '5': 11, '6': '.user.UserRequest', '10': 'User'},
    const {'1': 'ComplaintDocs', '3': 3, '4': 3, '5': 11, '6': '.complaint.ComplaintDocsModel', '10': 'ComplaintDocs'},
    const {'1': 'Subject', '3': 4, '4': 1, '5': 9, '10': 'Subject'},
    const {'1': 'Message', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'Message', '17': true},
    const {'1': 'Status', '3': 6, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 7, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 8, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 9, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'UserId', '3': 10, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'ResidenceId', '3': 11, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'BuildingName', '3': 12, '4': 1, '5': 9, '10': 'BuildingName'},
    const {'1': 'UnitNumber', '3': 13, '4': 1, '5': 9, '10': 'UnitNumber'},
  ],
  '8': const [
    const {'1': '_Message'},
  ],
};

/// Descriptor for `ComplaintRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complaintRequestDescriptor = $convert.base64Decode('ChBDb21wbGFpbnRSZXF1ZXN0EiAKC0NvbXBsYWludElkGAEgASgJUgtDb21wbGFpbnRJZBIlCgRVc2VyGAIgASgLMhEudXNlci5Vc2VyUmVxdWVzdFIEVXNlchJDCg1Db21wbGFpbnREb2NzGAMgAygLMh0uY29tcGxhaW50LkNvbXBsYWludERvY3NNb2RlbFINQ29tcGxhaW50RG9jcxIYCgdTdWJqZWN0GAQgASgJUgdTdWJqZWN0Eh0KB01lc3NhZ2UYBSABKAlIAFIHTWVzc2FnZYgBARIsCgZTdGF0dXMYBiABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXMSIAoLRGF0ZUNyZWF0ZWQYByABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgIIAEoCVIMRGF0ZU1vZGlmaWVkEikKBUVycm9yGAkgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvchIWCgZVc2VySWQYCiABKAlSBlVzZXJJZBIgCgtSZXNpZGVuY2VJZBgLIAEoCVILUmVzaWRlbmNlSWQSIgoMQnVpbGRpbmdOYW1lGAwgASgJUgxCdWlsZGluZ05hbWUSHgoKVW5pdE51bWJlchgNIAEoCVIKVW5pdE51bWJlckIKCghfTWVzc2FnZQ==');
@$core.Deprecated('Use complaintLookupModelDescriptor instead')
const ComplaintLookupModel$json = const {
  '1': 'ComplaintLookupModel',
  '2': const [
    const {'1': 'ComplaintId', '3': 1, '4': 1, '5': 9, '10': 'ComplaintId'},
  ],
};

/// Descriptor for `ComplaintLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complaintLookupModelDescriptor = $convert.base64Decode('ChRDb21wbGFpbnRMb29rdXBNb2RlbBIgCgtDb21wbGFpbnRJZBgBIAEoCVILQ29tcGxhaW50SWQ=');
@$core.Deprecated('Use complaintDocLookupModelDescriptor instead')
const ComplaintDocLookupModel$json = const {
  '1': 'ComplaintDocLookupModel',
  '2': const [
    const {'1': 'ComplaintDocId', '3': 1, '4': 1, '5': 9, '10': 'ComplaintDocId'},
  ],
};

/// Descriptor for `ComplaintDocLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complaintDocLookupModelDescriptor = $convert.base64Decode('ChdDb21wbGFpbnREb2NMb29rdXBNb2RlbBImCg5Db21wbGFpbnREb2NJZBgBIAEoCVIOQ29tcGxhaW50RG9jSWQ=');
@$core.Deprecated('Use resComplaintLookupModelDescriptor instead')
const ResComplaintLookupModel$json = const {
  '1': 'ResComplaintLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResComplaintLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resComplaintLookupModelDescriptor = $convert.base64Decode('ChdSZXNDb21wbGFpbnRMb29rdXBNb2RlbBIgCgtSZXNpZGVuY2VJZBgBIAEoCVILUmVzaWRlbmNlSWQ=');
@$core.Deprecated('Use complaintsListDescriptor instead')
const ComplaintsList$json = const {
  '1': 'ComplaintsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.complaint.ComplaintRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ComplaintsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complaintsListDescriptor = $convert.base64Decode('Cg5Db21wbGFpbnRzTGlzdBIxCgVJdGVtcxgBIAMoCzIbLmNvbXBsYWludC5Db21wbGFpbnRSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use complaintDocsModelDescriptor instead')
const ComplaintDocsModel$json = const {
  '1': 'ComplaintDocsModel',
  '2': const [
    const {'1': 'ComplaintDocId', '3': 1, '4': 1, '5': 9, '10': 'ComplaintDocId'},
    const {'1': 'File', '3': 2, '4': 1, '5': 12, '10': 'File'},
    const {'1': 'FileType', '3': 3, '4': 1, '5': 9, '10': 'FileType'},
    const {'1': 'FileName', '3': 4, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'Complaint', '3': 5, '4': 1, '5': 11, '6': '.complaint.ComplaintRequest', '10': 'Complaint'},
    const {'1': 'Error', '3': 6, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ComplaintDocsModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complaintDocsModelDescriptor = $convert.base64Decode('ChJDb21wbGFpbnREb2NzTW9kZWwSJgoOQ29tcGxhaW50RG9jSWQYASABKAlSDkNvbXBsYWludERvY0lkEhIKBEZpbGUYAiABKAxSBEZpbGUSGgoIRmlsZVR5cGUYAyABKAlSCEZpbGVUeXBlEhoKCEZpbGVOYW1lGAQgASgJUghGaWxlTmFtZRI5CglDb21wbGFpbnQYBSABKAsyGy5jb21wbGFpbnQuQ29tcGxhaW50UmVxdWVzdFIJQ29tcGxhaW50EikKBUVycm9yGAYgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
