///
//  Generated code. Do not modify.
//  source: checkpoint.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use checkpointResponseDescriptor instead')
const CheckpointResponse$json = const {
  '1': 'CheckpointResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `CheckpointResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkpointResponseDescriptor = $convert.base64Decode('ChJDaGVja3BvaW50UmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEhIKBElzT2sYAiABKAhSBElzT2sSKQoFRXJyb3IYAyABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use checkpointVisitRequestDescriptor instead')
const CheckpointVisitRequest$json = const {
  '1': 'CheckpointVisitRequest',
  '2': const [
    const {'1': 'CheckpointId', '3': 1, '4': 1, '5': 9, '10': 'CheckpointId'},
    const {'1': 'UserId', '3': 2, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'ResidenceId', '3': 3, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'Proof', '3': 4, '4': 1, '5': 12, '10': 'Proof'},
    const {'1': 'Status', '3': 5, '4': 1, '5': 8, '10': 'Status'},
    const {'1': 'CheckDate', '3': 6, '4': 1, '5': 9, '10': 'CheckDate'},
    const {'1': 'VisiteCheckpointId', '3': 7, '4': 1, '5': 9, '10': 'VisiteCheckpointId'},
    const {'1': 'Error', '3': 8, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'DateCreated', '3': 9, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 10, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Location', '3': 11, '4': 1, '5': 9, '10': 'Location'},
    const {'1': 'Proof2', '3': 12, '4': 1, '5': 12, '10': 'Proof2'},
    const {'1': 'Proof3', '3': 13, '4': 1, '5': 12, '10': 'Proof3'},
    const {'1': 'Proof4', '3': 14, '4': 1, '5': 12, '10': 'Proof4'},
  ],
};

/// Descriptor for `CheckpointVisitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkpointVisitRequestDescriptor = $convert.base64Decode('ChZDaGVja3BvaW50VmlzaXRSZXF1ZXN0EiIKDENoZWNrcG9pbnRJZBgBIAEoCVIMQ2hlY2twb2ludElkEhYKBlVzZXJJZBgCIAEoCVIGVXNlcklkEiAKC1Jlc2lkZW5jZUlkGAMgASgJUgtSZXNpZGVuY2VJZBIUCgVQcm9vZhgEIAEoDFIFUHJvb2YSFgoGU3RhdHVzGAUgASgIUgZTdGF0dXMSHAoJQ2hlY2tEYXRlGAYgASgJUglDaGVja0RhdGUSLgoSVmlzaXRlQ2hlY2twb2ludElkGAcgASgJUhJWaXNpdGVDaGVja3BvaW50SWQSKQoFRXJyb3IYCCABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9yEiAKC0RhdGVDcmVhdGVkGAkgASgJUgtEYXRlQ3JlYXRlZBIiCgxEYXRlTW9kaWZpZWQYCiABKAlSDERhdGVNb2RpZmllZBIaCghMb2NhdGlvbhgLIAEoCVIITG9jYXRpb24SFgoGUHJvb2YyGAwgASgMUgZQcm9vZjISFgoGUHJvb2YzGA0gASgMUgZQcm9vZjMSFgoGUHJvb2Y0GA4gASgMUgZQcm9vZjQ=');
@$core.Deprecated('Use checkpointRequestDescriptor instead')
const CheckpointRequest$json = const {
  '1': 'CheckpointRequest',
  '2': const [
    const {'1': 'CheckpointId', '3': 1, '4': 1, '5': 9, '10': 'CheckpointId'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'Description', '17': true},
    const {'1': 'Status', '3': 4, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 5, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 6, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 7, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'File', '3': 8, '4': 1, '5': 12, '10': 'File'},
    const {'1': 'residence', '3': 9, '4': 1, '5': 11, '6': '.residence.ResidenceRequest', '10': 'residence'},
    const {'1': 'ResidenceId', '3': 10, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
  '8': const [
    const {'1': '_Description'},
  ],
};

/// Descriptor for `CheckpointRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkpointRequestDescriptor = $convert.base64Decode('ChFDaGVja3BvaW50UmVxdWVzdBIiCgxDaGVja3BvaW50SWQYASABKAlSDENoZWNrcG9pbnRJZBIUCgVUaXRsZRgCIAEoCVIFVGl0bGUSJQoLRGVzY3JpcHRpb24YAyABKAlIAFILRGVzY3JpcHRpb26IAQESLAoGU3RhdHVzGAQgASgOMhQudXRpbGl0eS5TdGF0dXNNb2RlbFIGU3RhdHVzEiAKC0RhdGVDcmVhdGVkGAUgASgJUgtEYXRlQ3JlYXRlZBIiCgxEYXRlTW9kaWZpZWQYBiABKAlSDERhdGVNb2RpZmllZBIpCgVFcnJvchgHIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3ISEgoERmlsZRgIIAEoDFIERmlsZRI5CglyZXNpZGVuY2UYCSABKAsyGy5yZXNpZGVuY2UuUmVzaWRlbmNlUmVxdWVzdFIJcmVzaWRlbmNlEiAKC1Jlc2lkZW5jZUlkGAogASgJUgtSZXNpZGVuY2VJZEIOCgxfRGVzY3JpcHRpb24=');
@$core.Deprecated('Use checkpointLookupModelDescriptor instead')
const CheckpointLookupModel$json = const {
  '1': 'CheckpointLookupModel',
  '2': const [
    const {'1': 'CheckpointId', '3': 1, '4': 1, '5': 9, '10': 'CheckpointId'},
  ],
};

/// Descriptor for `CheckpointLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkpointLookupModelDescriptor = $convert.base64Decode('ChVDaGVja3BvaW50TG9va3VwTW9kZWwSIgoMQ2hlY2twb2ludElkGAEgASgJUgxDaGVja3BvaW50SWQ=');
@$core.Deprecated('Use checkpointsListDescriptor instead')
const CheckpointsList$json = const {
  '1': 'CheckpointsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.checkpoint.CheckpointRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `CheckpointsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkpointsListDescriptor = $convert.base64Decode('Cg9DaGVja3BvaW50c0xpc3QSMwoFSXRlbXMYASADKAsyHS5jaGVja3BvaW50LkNoZWNrcG9pbnRSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use resCheckpointLookupModelDescriptor instead')
const ResCheckpointLookupModel$json = const {
  '1': 'ResCheckpointLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResCheckpointLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resCheckpointLookupModelDescriptor = $convert.base64Decode('ChhSZXNDaGVja3BvaW50TG9va3VwTW9kZWwSIAoLUmVzaWRlbmNlSWQYASABKAlSC1Jlc2lkZW5jZUlk');
