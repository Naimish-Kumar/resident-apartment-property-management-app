///
//  Generated code. Do not modify.
//  source: slot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use slotResponseDescriptor instead')
const SlotResponse$json = const {
  '1': 'SlotResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `SlotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List slotResponseDescriptor = $convert.base64Decode('CgxTbG90UmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEhIKBElzT2sYAiABKAhSBElzT2sSKQoFRXJyb3IYAyABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use slotFacilityLookupModelDescriptor instead')
const SlotFacilityLookupModel$json = const {
  '1': 'SlotFacilityLookupModel',
  '2': const [
    const {'1': 'FacilityId', '3': 1, '4': 1, '5': 9, '10': 'FacilityId'},
    const {'1': 'ResidenceId', '3': 2, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `SlotFacilityLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List slotFacilityLookupModelDescriptor = $convert.base64Decode('ChdTbG90RmFjaWxpdHlMb29rdXBNb2RlbBIeCgpGYWNpbGl0eUlkGAEgASgJUgpGYWNpbGl0eUlkEiAKC1Jlc2lkZW5jZUlkGAIgASgJUgtSZXNpZGVuY2VJZA==');
@$core.Deprecated('Use slotRequestDescriptor instead')
const SlotRequest$json = const {
  '1': 'SlotRequest',
  '2': const [
    const {'1': 'SlotId', '3': 1, '4': 1, '5': 9, '10': 'SlotId'},
    const {'1': 'SlotName', '3': 2, '4': 1, '5': 9, '10': 'SlotName'},
    const {'1': 'From', '3': 3, '4': 1, '5': 9, '10': 'From'},
    const {'1': 'Status', '3': 4, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 5, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 6, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 7, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'To', '3': 8, '4': 1, '5': 9, '10': 'To'},
    const {'1': 'residence', '3': 9, '4': 1, '5': 11, '6': '.residence.ResidenceRequest', '10': 'residence'},
    const {'1': 'ResidenceId', '3': 10, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'People', '3': 11, '4': 1, '5': 9, '10': 'People'},
    const {'1': 'FacilityId', '3': 12, '4': 1, '5': 9, '10': 'FacilityId'},
    const {'1': 'Facility', '3': 13, '4': 1, '5': 11, '6': '.facility.FacilityRequest', '10': 'Facility'},
  ],
};

/// Descriptor for `SlotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List slotRequestDescriptor = $convert.base64Decode('CgtTbG90UmVxdWVzdBIWCgZTbG90SWQYASABKAlSBlNsb3RJZBIaCghTbG90TmFtZRgCIAEoCVIIU2xvdE5hbWUSEgoERnJvbRgDIAEoCVIERnJvbRIsCgZTdGF0dXMYBCABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXMSIAoLRGF0ZUNyZWF0ZWQYBSABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgGIAEoCVIMRGF0ZU1vZGlmaWVkEikKBUVycm9yGAcgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvchIOCgJUbxgIIAEoCVICVG8SOQoJcmVzaWRlbmNlGAkgASgLMhsucmVzaWRlbmNlLlJlc2lkZW5jZVJlcXVlc3RSCXJlc2lkZW5jZRIgCgtSZXNpZGVuY2VJZBgKIAEoCVILUmVzaWRlbmNlSWQSFgoGUGVvcGxlGAsgASgJUgZQZW9wbGUSHgoKRmFjaWxpdHlJZBgMIAEoCVIKRmFjaWxpdHlJZBI1CghGYWNpbGl0eRgNIAEoCzIZLmZhY2lsaXR5LkZhY2lsaXR5UmVxdWVzdFIIRmFjaWxpdHk=');
@$core.Deprecated('Use slotLookupModelDescriptor instead')
const SlotLookupModel$json = const {
  '1': 'SlotLookupModel',
  '2': const [
    const {'1': 'SlotId', '3': 1, '4': 1, '5': 9, '10': 'SlotId'},
  ],
};

/// Descriptor for `SlotLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List slotLookupModelDescriptor = $convert.base64Decode('Cg9TbG90TG9va3VwTW9kZWwSFgoGU2xvdElkGAEgASgJUgZTbG90SWQ=');
@$core.Deprecated('Use slotsListDescriptor instead')
const SlotsList$json = const {
  '1': 'SlotsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.slot.SlotRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `SlotsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List slotsListDescriptor = $convert.base64Decode('CglTbG90c0xpc3QSJwoFSXRlbXMYASADKAsyES5zbG90LlNsb3RSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use resSlotLookupModelDescriptor instead')
const ResSlotLookupModel$json = const {
  '1': 'ResSlotLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResSlotLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resSlotLookupModelDescriptor = $convert.base64Decode('ChJSZXNTbG90TG9va3VwTW9kZWwSIAoLUmVzaWRlbmNlSWQYASABKAlSC1Jlc2lkZW5jZUlk');
