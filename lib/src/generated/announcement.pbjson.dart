///
//  Generated code. Do not modify.
//  source: announcement.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use announcementResponseDescriptor instead')
const AnnouncementResponse$json = const {
  '1': 'AnnouncementResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AnnouncementResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementResponseDescriptor = $convert.base64Decode('ChRBbm5vdW5jZW1lbnRSZXNwb25zZRIaCghSZXNwb25zZRgBIAEoCVIIUmVzcG9uc2USEgoESXNPaxgCIAEoCFIESXNPaxIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use announcementRequestDescriptor instead')
const AnnouncementRequest$json = const {
  '1': 'AnnouncementRequest',
  '2': const [
    const {'1': 'AnnouncementId', '3': 1, '4': 1, '5': 9, '10': 'AnnouncementId'},
    const {'1': 'Users', '3': 2, '4': 1, '5': 9, '10': 'Users'},
    const {'1': 'AnnouncementDocs', '3': 3, '4': 3, '5': 11, '6': '.announcement.AnnouncementDocsModel', '10': 'AnnouncementDocs'},
    const {'1': 'Title', '3': 4, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Description', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'Description', '17': true},
    const {'1': 'ResidenceId', '3': 6, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'DateCreated', '3': 7, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 8, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 9, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'CreatedByUserId', '3': 10, '4': 1, '5': 9, '10': 'CreatedByUserId'},
    const {'1': 'UserList', '3': 11, '4': 3, '5': 11, '6': '.announcement.UserRequestData', '10': 'UserList'},
    const {'1': 'AnnouncementType', '3': 12, '4': 1, '5': 14, '6': '.utility.AnnouncementTypeModel', '10': 'AnnouncementType'},
  ],
  '8': const [
    const {'1': '_Description'},
  ],
};

/// Descriptor for `AnnouncementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementRequestDescriptor = $convert.base64Decode('ChNBbm5vdW5jZW1lbnRSZXF1ZXN0EiYKDkFubm91bmNlbWVudElkGAEgASgJUg5Bbm5vdW5jZW1lbnRJZBIUCgVVc2VycxgCIAEoCVIFVXNlcnMSTwoQQW5ub3VuY2VtZW50RG9jcxgDIAMoCzIjLmFubm91bmNlbWVudC5Bbm5vdW5jZW1lbnREb2NzTW9kZWxSEEFubm91bmNlbWVudERvY3MSFAoFVGl0bGUYBCABKAlSBVRpdGxlEiUKC0Rlc2NyaXB0aW9uGAUgASgJSABSC0Rlc2NyaXB0aW9uiAEBEiAKC1Jlc2lkZW5jZUlkGAYgASgJUgtSZXNpZGVuY2VJZBIgCgtEYXRlQ3JlYXRlZBgHIAEoCVILRGF0ZUNyZWF0ZWQSIgoMRGF0ZU1vZGlmaWVkGAggASgJUgxEYXRlTW9kaWZpZWQSKQoFRXJyb3IYCSABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9yEigKD0NyZWF0ZWRCeVVzZXJJZBgKIAEoCVIPQ3JlYXRlZEJ5VXNlcklkEjkKCFVzZXJMaXN0GAsgAygLMh0uYW5ub3VuY2VtZW50LlVzZXJSZXF1ZXN0RGF0YVIIVXNlckxpc3QSSgoQQW5ub3VuY2VtZW50VHlwZRgMIAEoDjIeLnV0aWxpdHkuQW5ub3VuY2VtZW50VHlwZU1vZGVsUhBBbm5vdW5jZW1lbnRUeXBlQg4KDF9EZXNjcmlwdGlvbg==');
@$core.Deprecated('Use userRequestDataDescriptor instead')
const UserRequestData$json = const {
  '1': 'UserRequestData',
  '2': const [
    const {'1': 'UserId', '3': 1, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'FirstName', '3': 2, '4': 1, '5': 9, '10': 'FirstName'},
    const {'1': 'LastName', '3': 3, '4': 1, '5': 9, '10': 'LastName'},
    const {'1': 'NRIC', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'NRIC', '17': true},
    const {'1': 'Email', '3': 5, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'Passport', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'Passport', '17': true},
  ],
  '8': const [
    const {'1': '_NRIC'},
    const {'1': '_Passport'},
  ],
};

/// Descriptor for `UserRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRequestDataDescriptor = $convert.base64Decode('Cg9Vc2VyUmVxdWVzdERhdGESFgoGVXNlcklkGAEgASgJUgZVc2VySWQSHAoJRmlyc3ROYW1lGAIgASgJUglGaXJzdE5hbWUSGgoITGFzdE5hbWUYAyABKAlSCExhc3ROYW1lEhcKBE5SSUMYBCABKAlIAFIETlJJQ4gBARIUCgVFbWFpbBgFIAEoCVIFRW1haWwSHwoIUGFzc3BvcnQYBiABKAlIAVIIUGFzc3BvcnSIAQFCBwoFX05SSUNCCwoJX1Bhc3Nwb3J0');
@$core.Deprecated('Use announcementLookupModelDescriptor instead')
const AnnouncementLookupModel$json = const {
  '1': 'AnnouncementLookupModel',
  '2': const [
    const {'1': 'AnnouncementId', '3': 1, '4': 1, '5': 9, '10': 'AnnouncementId'},
  ],
};

/// Descriptor for `AnnouncementLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementLookupModelDescriptor = $convert.base64Decode('ChdBbm5vdW5jZW1lbnRMb29rdXBNb2RlbBImCg5Bbm5vdW5jZW1lbnRJZBgBIAEoCVIOQW5ub3VuY2VtZW50SWQ=');
@$core.Deprecated('Use announcementDocLookupModelDescriptor instead')
const AnnouncementDocLookupModel$json = const {
  '1': 'AnnouncementDocLookupModel',
  '2': const [
    const {'1': 'AnnouncementDocId', '3': 1, '4': 1, '5': 9, '10': 'AnnouncementDocId'},
  ],
};

/// Descriptor for `AnnouncementDocLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementDocLookupModelDescriptor = $convert.base64Decode('ChpBbm5vdW5jZW1lbnREb2NMb29rdXBNb2RlbBIsChFBbm5vdW5jZW1lbnREb2NJZBgBIAEoCVIRQW5ub3VuY2VtZW50RG9jSWQ=');
@$core.Deprecated('Use resAnnouncementLookupModelDescriptor instead')
const ResAnnouncementLookupModel$json = const {
  '1': 'ResAnnouncementLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResAnnouncementLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resAnnouncementLookupModelDescriptor = $convert.base64Decode('ChpSZXNBbm5vdW5jZW1lbnRMb29rdXBNb2RlbBIgCgtSZXNpZGVuY2VJZBgBIAEoCVILUmVzaWRlbmNlSWQ=');
@$core.Deprecated('Use announcementsListDescriptor instead')
const AnnouncementsList$json = const {
  '1': 'AnnouncementsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.announcement.AnnouncementRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AnnouncementsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementsListDescriptor = $convert.base64Decode('ChFBbm5vdW5jZW1lbnRzTGlzdBI3CgVJdGVtcxgBIAMoCzIhLmFubm91bmNlbWVudC5Bbm5vdW5jZW1lbnRSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use announcementDocsModelDescriptor instead')
const AnnouncementDocsModel$json = const {
  '1': 'AnnouncementDocsModel',
  '2': const [
    const {'1': 'AnnouncementDocId', '3': 1, '4': 1, '5': 9, '10': 'AnnouncementDocId'},
    const {'1': 'File', '3': 2, '4': 1, '5': 12, '10': 'File'},
    const {'1': 'FileType', '3': 3, '4': 1, '5': 9, '10': 'FileType'},
    const {'1': 'FileName', '3': 4, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'Announcement', '3': 5, '4': 1, '5': 11, '6': '.announcement.AnnouncementRequest', '10': 'Announcement'},
    const {'1': 'Error', '3': 6, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AnnouncementDocsModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementDocsModelDescriptor = $convert.base64Decode('ChVBbm5vdW5jZW1lbnREb2NzTW9kZWwSLAoRQW5ub3VuY2VtZW50RG9jSWQYASABKAlSEUFubm91bmNlbWVudERvY0lkEhIKBEZpbGUYAiABKAxSBEZpbGUSGgoIRmlsZVR5cGUYAyABKAlSCEZpbGVUeXBlEhoKCEZpbGVOYW1lGAQgASgJUghGaWxlTmFtZRJFCgxBbm5vdW5jZW1lbnQYBSABKAsyIS5hbm5vdW5jZW1lbnQuQW5ub3VuY2VtZW50UmVxdWVzdFIMQW5ub3VuY2VtZW50EikKBUVycm9yGAYgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
