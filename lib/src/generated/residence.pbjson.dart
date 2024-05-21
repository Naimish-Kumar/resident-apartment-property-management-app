///
//  Generated code. Do not modify.
//  source: residence.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use residencesParkingListDescriptor instead')
const ResidencesParkingList$json = const {
  '1': 'ResidencesParkingList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.residence.ResidenceParkingResponse', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ResidencesParkingList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residencesParkingListDescriptor = $convert.base64Decode('ChVSZXNpZGVuY2VzUGFya2luZ0xpc3QSOQoFSXRlbXMYASADKAsyIy5yZXNpZGVuY2UuUmVzaWRlbmNlUGFya2luZ1Jlc3BvbnNlUgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use residenceParkingResponseDescriptor instead')
const ResidenceParkingResponse$json = const {
  '1': 'ResidenceParkingResponse',
  '2': const [
    const {'1': 'ParkingId', '3': 1, '4': 1, '5': 9, '10': 'ParkingId'},
    const {'1': 'ResidenceId', '3': 2, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'ParkingNumber', '3': 3, '4': 1, '5': 5, '10': 'ParkingNumber'},
    const {'1': 'ParkingName', '3': 4, '4': 1, '5': 9, '10': 'ParkingName'},
    const {'1': 'VisitorId', '3': 5, '4': 1, '5': 9, '10': 'VisitorId'},
    const {'1': 'CheckInDateTime', '3': 6, '4': 1, '5': 9, '10': 'CheckInDateTime'},
    const {'1': 'CheckOutDateTime', '3': 7, '4': 1, '5': 9, '10': 'CheckOutDateTime'},
  ],
};

/// Descriptor for `ResidenceParkingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceParkingResponseDescriptor = $convert.base64Decode('ChhSZXNpZGVuY2VQYXJraW5nUmVzcG9uc2USHAoJUGFya2luZ0lkGAEgASgJUglQYXJraW5nSWQSIAoLUmVzaWRlbmNlSWQYAiABKAlSC1Jlc2lkZW5jZUlkEiQKDVBhcmtpbmdOdW1iZXIYAyABKAVSDVBhcmtpbmdOdW1iZXISIAoLUGFya2luZ05hbWUYBCABKAlSC1BhcmtpbmdOYW1lEhwKCVZpc2l0b3JJZBgFIAEoCVIJVmlzaXRvcklkEigKD0NoZWNrSW5EYXRlVGltZRgGIAEoCVIPQ2hlY2tJbkRhdGVUaW1lEioKEENoZWNrT3V0RGF0ZVRpbWUYByABKAlSEENoZWNrT3V0RGF0ZVRpbWU=');
@$core.Deprecated('Use residenceResponseDescriptor instead')
const ResidenceResponse$json = const {
  '1': 'ResidenceResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ResidenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceResponseDescriptor = $convert.base64Decode('ChFSZXNpZGVuY2VSZXNwb25zZRIaCghSZXNwb25zZRgBIAEoCVIIUmVzcG9uc2USEgoESXNPaxgCIAEoCFIESXNPaxIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use residenceLookupModelDescriptor instead')
const ResidenceLookupModel$json = const {
  '1': 'ResidenceLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResidenceLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceLookupModelDescriptor = $convert.base64Decode('ChRSZXNpZGVuY2VMb29rdXBNb2RlbBIgCgtSZXNpZGVuY2VJZBgBIAEoCVILUmVzaWRlbmNlSWQ=');
@$core.Deprecated('Use residenceDocLookUpModelDescriptor instead')
const ResidenceDocLookUpModel$json = const {
  '1': 'ResidenceDocLookUpModel',
  '2': const [
    const {'1': 'ResidenceDocId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceDocId'},
  ],
};

/// Descriptor for `ResidenceDocLookUpModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceDocLookUpModelDescriptor = $convert.base64Decode('ChdSZXNpZGVuY2VEb2NMb29rVXBNb2RlbBImCg5SZXNpZGVuY2VEb2NJZBgBIAEoCVIOUmVzaWRlbmNlRG9jSWQ=');
@$core.Deprecated('Use residenceRequestDescriptor instead')
const ResidenceRequest$json = const {
  '1': 'ResidenceRequest',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'ResidenceName', '3': 2, '4': 1, '5': 9, '10': 'ResidenceName'},
    const {'1': 'PhoneNumber', '3': 3, '4': 1, '5': 9, '10': 'PhoneNumber'},
    const {'1': 'OfficeNumber', '3': 4, '4': 1, '5': 9, '10': 'OfficeNumber'},
    const {'1': 'EmailAddress', '3': 5, '4': 1, '5': 9, '10': 'EmailAddress'},
    const {'1': 'Address1', '3': 6, '4': 1, '5': 9, '10': 'Address1'},
    const {'1': 'Address2', '3': 7, '4': 1, '5': 9, '10': 'Address2'},
    const {'1': 'City', '3': 8, '4': 1, '5': 9, '10': 'City'},
    const {'1': 'State', '3': 9, '4': 1, '5': 14, '6': '.utility.StateListModel', '10': 'State'},
    const {'1': 'ZipCode', '3': 10, '4': 1, '5': 5, '10': 'ZipCode'},
    const {'1': 'Country', '3': 11, '4': 1, '5': 9, '10': 'Country'},
    const {'1': 'Description', '3': 12, '4': 1, '5': 9, '10': 'Description'},
    const {'1': 'Status', '3': 13, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'Price', '3': 14, '4': 1, '5': 1, '9': 0, '10': 'Price', '17': true},
    const {'1': 'DateCreated', '3': 15, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 16, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'ResidenceDocs', '3': 17, '4': 3, '5': 11, '6': '.residence.ResidenceDocModel', '10': 'ResidenceDocs'},
    const {'1': 'FileType', '3': 18, '4': 1, '5': 9, '10': 'FileType'},
    const {'1': 'FileName', '3': 19, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'ResidenceType', '3': 20, '4': 1, '5': 14, '6': '.utility.ResidenceTypeModel', '10': 'ResidenceType'},
    const {'1': 'Error', '3': 21, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'ManagementId', '3': 22, '4': 1, '5': 9, '10': 'ManagementId'},
    const {'1': 'ManagementName', '3': 23, '4': 1, '5': 9, '10': 'ManagementName'},
    const {'1': 'ResFacility', '3': 24, '4': 3, '5': 11, '6': '.residence.ResFacility', '10': 'ResFacility'},
    const {'1': 'ResBuilding', '3': 25, '4': 3, '5': 11, '6': '.residence.ResBuilding', '10': 'ResBuilding'},
    const {'1': 'SubscriptionStart', '3': 26, '4': 1, '5': 9, '10': 'SubscriptionStart'},
    const {'1': 'SubscriptionEnd', '3': 27, '4': 1, '5': 9, '10': 'SubscriptionEnd'},
  ],
  '8': const [
    const {'1': '_Price'},
  ],
};

/// Descriptor for `ResidenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceRequestDescriptor = $convert.base64Decode('ChBSZXNpZGVuY2VSZXF1ZXN0EiAKC1Jlc2lkZW5jZUlkGAEgASgJUgtSZXNpZGVuY2VJZBIkCg1SZXNpZGVuY2VOYW1lGAIgASgJUg1SZXNpZGVuY2VOYW1lEiAKC1Bob25lTnVtYmVyGAMgASgJUgtQaG9uZU51bWJlchIiCgxPZmZpY2VOdW1iZXIYBCABKAlSDE9mZmljZU51bWJlchIiCgxFbWFpbEFkZHJlc3MYBSABKAlSDEVtYWlsQWRkcmVzcxIaCghBZGRyZXNzMRgGIAEoCVIIQWRkcmVzczESGgoIQWRkcmVzczIYByABKAlSCEFkZHJlc3MyEhIKBENpdHkYCCABKAlSBENpdHkSLQoFU3RhdGUYCSABKA4yFy51dGlsaXR5LlN0YXRlTGlzdE1vZGVsUgVTdGF0ZRIYCgdaaXBDb2RlGAogASgFUgdaaXBDb2RlEhgKB0NvdW50cnkYCyABKAlSB0NvdW50cnkSIAoLRGVzY3JpcHRpb24YDCABKAlSC0Rlc2NyaXB0aW9uEiwKBlN0YXR1cxgNIAEoDjIULnV0aWxpdHkuU3RhdHVzTW9kZWxSBlN0YXR1cxIZCgVQcmljZRgOIAEoAUgAUgVQcmljZYgBARIgCgtEYXRlQ3JlYXRlZBgPIAEoCVILRGF0ZUNyZWF0ZWQSIgoMRGF0ZU1vZGlmaWVkGBAgASgJUgxEYXRlTW9kaWZpZWQSQgoNUmVzaWRlbmNlRG9jcxgRIAMoCzIcLnJlc2lkZW5jZS5SZXNpZGVuY2VEb2NNb2RlbFINUmVzaWRlbmNlRG9jcxIaCghGaWxlVHlwZRgSIAEoCVIIRmlsZVR5cGUSGgoIRmlsZU5hbWUYEyABKAlSCEZpbGVOYW1lEkEKDVJlc2lkZW5jZVR5cGUYFCABKA4yGy51dGlsaXR5LlJlc2lkZW5jZVR5cGVNb2RlbFINUmVzaWRlbmNlVHlwZRIpCgVFcnJvchgVIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3ISIgoMTWFuYWdlbWVudElkGBYgASgJUgxNYW5hZ2VtZW50SWQSJgoOTWFuYWdlbWVudE5hbWUYFyABKAlSDk1hbmFnZW1lbnROYW1lEjgKC1Jlc0ZhY2lsaXR5GBggAygLMhYucmVzaWRlbmNlLlJlc0ZhY2lsaXR5UgtSZXNGYWNpbGl0eRI4CgtSZXNCdWlsZGluZxgZIAMoCzIWLnJlc2lkZW5jZS5SZXNCdWlsZGluZ1ILUmVzQnVpbGRpbmcSLAoRU3Vic2NyaXB0aW9uU3RhcnQYGiABKAlSEVN1YnNjcmlwdGlvblN0YXJ0EigKD1N1YnNjcmlwdGlvbkVuZBgbIAEoCVIPU3Vic2NyaXB0aW9uRW5kQggKBl9QcmljZQ==');
@$core.Deprecated('Use resFacilityDescriptor instead')
const ResFacility$json = const {
  '1': 'ResFacility',
  '2': const [
    const {'1': 'FacilityId', '3': 1, '4': 1, '5': 9, '10': 'FacilityId'},
    const {'1': 'FacilityName', '3': 2, '4': 1, '5': 9, '10': 'FacilityName'},
  ],
};

/// Descriptor for `ResFacility`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resFacilityDescriptor = $convert.base64Decode('CgtSZXNGYWNpbGl0eRIeCgpGYWNpbGl0eUlkGAEgASgJUgpGYWNpbGl0eUlkEiIKDEZhY2lsaXR5TmFtZRgCIAEoCVIMRmFjaWxpdHlOYW1l');
@$core.Deprecated('Use resBuildingDescriptor instead')
const ResBuilding$json = const {
  '1': 'ResBuilding',
  '2': const [
    const {'1': 'BuildingId', '3': 1, '4': 1, '5': 9, '10': 'BuildingId'},
    const {'1': 'BuildingName', '3': 2, '4': 1, '5': 9, '10': 'BuildingName'},
    const {'1': 'BuildingPrefix', '3': 3, '4': 1, '5': 9, '10': 'BuildingPrefix'},
    const {'1': 'TotalFloor', '3': 4, '4': 1, '5': 5, '10': 'TotalFloor'},
    const {'1': 'UnitPerFloor', '3': 5, '4': 1, '5': 5, '10': 'UnitPerFloor'},
    const {'1': 'Description', '3': 6, '4': 1, '5': 9, '10': 'Description'},
    const {'1': 'Status', '3': 7, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 8, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 9, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'IsUnitCreated', '3': 10, '4': 1, '5': 8, '10': 'IsUnitCreated'},
  ],
};

/// Descriptor for `ResBuilding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resBuildingDescriptor = $convert.base64Decode('CgtSZXNCdWlsZGluZxIeCgpCdWlsZGluZ0lkGAEgASgJUgpCdWlsZGluZ0lkEiIKDEJ1aWxkaW5nTmFtZRgCIAEoCVIMQnVpbGRpbmdOYW1lEiYKDkJ1aWxkaW5nUHJlZml4GAMgASgJUg5CdWlsZGluZ1ByZWZpeBIeCgpUb3RhbEZsb29yGAQgASgFUgpUb3RhbEZsb29yEiIKDFVuaXRQZXJGbG9vchgFIAEoBVIMVW5pdFBlckZsb29yEiAKC0Rlc2NyaXB0aW9uGAYgASgJUgtEZXNjcmlwdGlvbhIsCgZTdGF0dXMYByABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXMSIAoLRGF0ZUNyZWF0ZWQYCCABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgJIAEoCVIMRGF0ZU1vZGlmaWVkEiQKDUlzVW5pdENyZWF0ZWQYCiABKAhSDUlzVW5pdENyZWF0ZWQ=');
@$core.Deprecated('Use residenceDocModelDescriptor instead')
const ResidenceDocModel$json = const {
  '1': 'ResidenceDocModel',
  '2': const [
    const {'1': 'ResidenceDocId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceDocId'},
    const {'1': 'File', '3': 2, '4': 1, '5': 12, '10': 'File'},
    const {'1': 'FileType', '3': 3, '4': 1, '5': 9, '10': 'FileType'},
    const {'1': 'FileName', '3': 4, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'Residence', '3': 5, '4': 1, '5': 11, '6': '.residence.ResidenceRequest', '10': 'Residence'},
    const {'1': 'Error', '3': 6, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ResidenceDocModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceDocModelDescriptor = $convert.base64Decode('ChFSZXNpZGVuY2VEb2NNb2RlbBImCg5SZXNpZGVuY2VEb2NJZBgBIAEoCVIOUmVzaWRlbmNlRG9jSWQSEgoERmlsZRgCIAEoDFIERmlsZRIaCghGaWxlVHlwZRgDIAEoCVIIRmlsZVR5cGUSGgoIRmlsZU5hbWUYBCABKAlSCEZpbGVOYW1lEjkKCVJlc2lkZW5jZRgFIAEoCzIbLnJlc2lkZW5jZS5SZXNpZGVuY2VSZXF1ZXN0UglSZXNpZGVuY2USKQoFRXJyb3IYBiABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use residencesListDescriptor instead')
const ResidencesList$json = const {
  '1': 'ResidencesList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.residence.ResidenceRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ResidencesList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residencesListDescriptor = $convert.base64Decode('Cg5SZXNpZGVuY2VzTGlzdBIxCgVJdGVtcxgBIAMoCzIbLnJlc2lkZW5jZS5SZXNpZGVuY2VSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
