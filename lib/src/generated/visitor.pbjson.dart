///
//  Generated code. Do not modify.
//  source: visitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use visitorResponseDescriptor instead')
const VisitorResponse$json = const {
  '1': 'VisitorResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `VisitorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List visitorResponseDescriptor = $convert.base64Decode('Cg9WaXNpdG9yUmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEhIKBElzT2sYAiABKAhSBElzT2sSKQoFRXJyb3IYAyABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use visitorRequestDescriptor instead')
const VisitorRequest$json = const {
  '1': 'VisitorRequest',
  '2': const [
    const {'1': 'VisitorId', '3': 1, '4': 1, '5': 9, '10': 'VisitorId'},
    const {'1': 'ResidenceId', '3': 2, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'UnitId', '3': 3, '4': 1, '5': 9, '10': 'UnitId'},
    const {'1': 'UserId', '3': 4, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'BuildingId', '3': 5, '4': 1, '5': 9, '10': 'BuildingId'},
    const {'1': 'Name', '3': 6, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'ICNumber', '3': 7, '4': 1, '5': 9, '10': 'ICNumber'},
    const {'1': 'PerpouseOfVisit', '3': 8, '4': 1, '5': 14, '6': '.utility.PerpouseOfVisitModel', '10': 'PerpouseOfVisit'},
    const {'1': 'VisitBy', '3': 9, '4': 1, '5': 14, '6': '.utility.VisitByModel', '10': 'VisitBy'},
    const {'1': 'VehicleNumber', '3': 10, '4': 1, '5': 9, '10': 'VehicleNumber'},
    const {'1': 'IsPreVisit', '3': 11, '4': 1, '5': 8, '10': 'IsPreVisit'},
    const {'1': 'ParkingId', '3': 12, '4': 1, '5': 9, '10': 'ParkingId'},
    const {'1': 'CheckIn', '3': 13, '4': 1, '5': 9, '10': 'CheckIn'},
    const {'1': 'CheckOut', '3': 14, '4': 1, '5': 9, '10': 'CheckOut'},
    const {'1': 'Error', '3': 15, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'IsCheckIn', '3': 16, '4': 1, '5': 8, '10': 'IsCheckIn'},
    const {'1': 'IsCheckOut', '3': 17, '4': 1, '5': 8, '10': 'IsCheckOut'},
    const {'1': 'ICProof', '3': 18, '4': 1, '5': 12, '10': 'ICProof'},
    const {'1': 'OwnerTenantIfo', '3': 19, '4': 1, '5': 11, '6': '.unit.OwnerTenantIfo', '10': 'OwnerTenantIfo'},
  ],
};

/// Descriptor for `VisitorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List visitorRequestDescriptor = $convert.base64Decode('Cg5WaXNpdG9yUmVxdWVzdBIcCglWaXNpdG9ySWQYASABKAlSCVZpc2l0b3JJZBIgCgtSZXNpZGVuY2VJZBgCIAEoCVILUmVzaWRlbmNlSWQSFgoGVW5pdElkGAMgASgJUgZVbml0SWQSFgoGVXNlcklkGAQgASgJUgZVc2VySWQSHgoKQnVpbGRpbmdJZBgFIAEoCVIKQnVpbGRpbmdJZBISCgROYW1lGAYgASgJUgROYW1lEhoKCElDTnVtYmVyGAcgASgJUghJQ051bWJlchJHCg9QZXJwb3VzZU9mVmlzaXQYCCABKA4yHS51dGlsaXR5LlBlcnBvdXNlT2ZWaXNpdE1vZGVsUg9QZXJwb3VzZU9mVmlzaXQSLwoHVmlzaXRCeRgJIAEoDjIVLnV0aWxpdHkuVmlzaXRCeU1vZGVsUgdWaXNpdEJ5EiQKDVZlaGljbGVOdW1iZXIYCiABKAlSDVZlaGljbGVOdW1iZXISHgoKSXNQcmVWaXNpdBgLIAEoCFIKSXNQcmVWaXNpdBIcCglQYXJraW5nSWQYDCABKAlSCVBhcmtpbmdJZBIYCgdDaGVja0luGA0gASgJUgdDaGVja0luEhoKCENoZWNrT3V0GA4gASgJUghDaGVja091dBIpCgVFcnJvchgPIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3ISHAoJSXNDaGVja0luGBAgASgIUglJc0NoZWNrSW4SHgoKSXNDaGVja091dBgRIAEoCFIKSXNDaGVja091dBIYCgdJQ1Byb29mGBIgASgMUgdJQ1Byb29mEjwKDk93bmVyVGVuYW50SWZvGBMgASgLMhQudW5pdC5Pd25lclRlbmFudElmb1IOT3duZXJUZW5hbnRJZm8=');
@$core.Deprecated('Use visitorLookupModelDescriptor instead')
const VisitorLookupModel$json = const {
  '1': 'VisitorLookupModel',
  '2': const [
    const {'1': 'VisitorId', '3': 1, '4': 1, '5': 9, '10': 'VisitorId'},
  ],
};

/// Descriptor for `VisitorLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List visitorLookupModelDescriptor = $convert.base64Decode('ChJWaXNpdG9yTG9va3VwTW9kZWwSHAoJVmlzaXRvcklkGAEgASgJUglWaXNpdG9ySWQ=');
@$core.Deprecated('Use residenceVisitorLookupModelDescriptor instead')
const ResidenceVisitorLookupModel$json = const {
  '1': 'ResidenceVisitorLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResidenceVisitorLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceVisitorLookupModelDescriptor = $convert.base64Decode('ChtSZXNpZGVuY2VWaXNpdG9yTG9va3VwTW9kZWwSIAoLUmVzaWRlbmNlSWQYASABKAlSC1Jlc2lkZW5jZUlk');
@$core.Deprecated('Use visitorsListDescriptor instead')
const VisitorsList$json = const {
  '1': 'VisitorsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.visitor.VisitorRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `VisitorsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List visitorsListDescriptor = $convert.base64Decode('CgxWaXNpdG9yc0xpc3QSLQoFSXRlbXMYASADKAsyFy52aXNpdG9yLlZpc2l0b3JSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
