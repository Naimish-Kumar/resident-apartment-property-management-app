///
//  Generated code. Do not modify.
//  source: unit.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ownerTenantIfoDescriptor instead')
const OwnerTenantIfo$json = const {
  '1': 'OwnerTenantIfo',
  '2': const [
    const {'1': 'Owner', '3': 1, '4': 1, '5': 11, '6': '.user.UserRequest', '10': 'Owner'},
    const {'1': 'Tenant', '3': 2, '4': 1, '5': 11, '6': '.user.UserRequest', '10': 'Tenant'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `OwnerTenantIfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownerTenantIfoDescriptor = $convert.base64Decode('Cg5Pd25lclRlbmFudElmbxInCgVPd25lchgBIAEoCzIRLnVzZXIuVXNlclJlcXVlc3RSBU93bmVyEikKBlRlbmFudBgCIAEoCzIRLnVzZXIuVXNlclJlcXVlc3RSBlRlbmFudBIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use unitResponseDescriptor instead')
const UnitResponse$json = const {
  '1': 'UnitResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `UnitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitResponseDescriptor = $convert.base64Decode('CgxVbml0UmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEhIKBElzT2sYAiABKAhSBElzT2sSKQoFRXJyb3IYAyABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use unitLookupModelDescriptor instead')
const UnitLookupModel$json = const {
  '1': 'UnitLookupModel',
  '2': const [
    const {'1': 'UnitId', '3': 1, '4': 1, '5': 9, '10': 'UnitId'},
  ],
};

/// Descriptor for `UnitLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitLookupModelDescriptor = $convert.base64Decode('Cg9Vbml0TG9va3VwTW9kZWwSFgoGVW5pdElkGAEgASgJUgZVbml0SWQ=');
@$core.Deprecated('Use residentUnitListOwnerLookupModelDescriptor instead')
const ResidentUnitListOwnerLookupModel$json = const {
  '1': 'ResidentUnitListOwnerLookupModel',
  '2': const [
    const {'1': 'ResidentId', '3': 1, '4': 1, '5': 9, '10': 'ResidentId'},
    const {'1': 'UserId', '3': 2, '4': 1, '5': 9, '10': 'UserId'},
  ],
};

/// Descriptor for `ResidentUnitListOwnerLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residentUnitListOwnerLookupModelDescriptor = $convert.base64Decode('CiBSZXNpZGVudFVuaXRMaXN0T3duZXJMb29rdXBNb2RlbBIeCgpSZXNpZGVudElkGAEgASgJUgpSZXNpZGVudElkEhYKBlVzZXJJZBgCIAEoCVIGVXNlcklk');
@$core.Deprecated('Use unitListLookupModelDescriptor instead')
const UnitListLookupModel$json = const {
  '1': 'UnitListLookupModel',
  '2': const [
    const {'1': 'BuildingId', '3': 1, '4': 1, '5': 9, '10': 'BuildingId'},
  ],
};

/// Descriptor for `UnitListLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitListLookupModelDescriptor = $convert.base64Decode('ChNVbml0TGlzdExvb2t1cE1vZGVsEh4KCkJ1aWxkaW5nSWQYASABKAlSCkJ1aWxkaW5nSWQ=');
@$core.Deprecated('Use residentUnitListLookupModelDescriptor instead')
const ResidentUnitListLookupModel$json = const {
  '1': 'ResidentUnitListLookupModel',
  '2': const [
    const {'1': 'ResidentId', '3': 1, '4': 1, '5': 9, '10': 'ResidentId'},
  ],
};

/// Descriptor for `ResidentUnitListLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residentUnitListLookupModelDescriptor = $convert.base64Decode('ChtSZXNpZGVudFVuaXRMaXN0TG9va3VwTW9kZWwSHgoKUmVzaWRlbnRJZBgBIAEoCVIKUmVzaWRlbnRJZA==');
@$core.Deprecated('Use unitDocLookUpModelDescriptor instead')
const UnitDocLookUpModel$json = const {
  '1': 'UnitDocLookUpModel',
  '2': const [
    const {'1': 'UnitDocId', '3': 1, '4': 1, '5': 9, '10': 'UnitDocId'},
  ],
};

/// Descriptor for `UnitDocLookUpModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitDocLookUpModelDescriptor = $convert.base64Decode('ChJVbml0RG9jTG9va1VwTW9kZWwSHAoJVW5pdERvY0lkGAEgASgJUglVbml0RG9jSWQ=');
@$core.Deprecated('Use unitRequestListDescriptor instead')
const UnitRequestList$json = const {
  '1': 'UnitRequestList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.unit.UnitRequest', '10': 'Items'},
    const {'1': 'BuildingId', '3': 2, '4': 1, '5': 9, '10': 'BuildingId'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `UnitRequestList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitRequestListDescriptor = $convert.base64Decode('Cg9Vbml0UmVxdWVzdExpc3QSJwoFSXRlbXMYASADKAsyES51bml0LlVuaXRSZXF1ZXN0UgVJdGVtcxIeCgpCdWlsZGluZ0lkGAIgASgJUgpCdWlsZGluZ0lkEikKBUVycm9yGAMgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use unitRequestDescriptor instead')
const UnitRequest$json = const {
  '1': 'UnitRequest',
  '2': const [
    const {'1': 'UnitId', '3': 1, '4': 1, '5': 9, '10': 'UnitId'},
    const {'1': 'UnitPrefix', '3': 2, '4': 1, '5': 9, '10': 'UnitPrefix'},
    const {'1': 'UnitFloorNumber', '3': 3, '4': 1, '5': 9, '10': 'UnitFloorNumber'},
    const {'1': 'UnitNumber', '3': 4, '4': 1, '5': 9, '10': 'UnitNumber'},
    const {'1': 'IsPrimary', '3': 5, '4': 1, '5': 8, '10': 'IsPrimary'},
    const {'1': 'UnitRole', '3': 6, '4': 1, '5': 14, '6': '.utility.UnitRoleModel', '10': 'UnitRole'},
    const {'1': 'UnitFurnishType', '3': 7, '4': 1, '5': 14, '6': '.utility.UnitFurnishTypeModel', '10': 'UnitFurnishType'},
    const {'1': 'UnitType', '3': 8, '4': 1, '5': 14, '6': '.utility.UnitTypeModel', '10': 'UnitType'},
    const {'1': 'LeaseFrom', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'LeaseFrom', '17': true},
    const {'1': 'LeaseTo', '3': 10, '4': 1, '5': 9, '9': 1, '10': 'LeaseTo', '17': true},
    const {'1': 'UnitPrice', '3': 11, '4': 1, '5': 1, '10': 'UnitPrice'},
    const {'1': 'NumberOfBedRoom', '3': 12, '4': 1, '5': 5, '10': 'NumberOfBedRoom'},
    const {'1': 'NumberOfBathroom', '3': 13, '4': 1, '5': 5, '10': 'NumberOfBathroom'},
    const {'1': 'Description', '3': 14, '4': 1, '5': 9, '9': 2, '10': 'Description', '17': true},
    const {'1': 'UnitStatus', '3': 15, '4': 1, '5': 14, '6': '.utility.UnitStatusModel', '10': 'UnitStatus'},
    const {'1': 'UnitSoldDate', '3': 16, '4': 1, '5': 9, '9': 3, '10': 'UnitSoldDate', '17': true},
    const {'1': 'Building', '3': 17, '4': 1, '5': 11, '6': '.building.BuildingRequest', '10': 'Building'},
    const {'1': 'User', '3': 18, '4': 1, '5': 11, '6': '.user.UserRequest', '10': 'User'},
    const {'1': 'UnitDocs', '3': 19, '4': 3, '5': 11, '6': '.unit.UnitDocModel', '10': 'UnitDocs'},
    const {'1': 'Tenant', '3': 20, '4': 1, '5': 11, '6': '.unit.TenantRequest', '10': 'Tenant'},
    const {'1': 'DateCreated', '3': 21, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 22, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'BuildingId', '3': 23, '4': 1, '5': 9, '10': 'BuildingId'},
    const {'1': 'UserId', '3': 24, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'Error', '3': 25, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
  '8': const [
    const {'1': '_LeaseFrom'},
    const {'1': '_LeaseTo'},
    const {'1': '_Description'},
    const {'1': '_UnitSoldDate'},
  ],
};

/// Descriptor for `UnitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitRequestDescriptor = $convert.base64Decode('CgtVbml0UmVxdWVzdBIWCgZVbml0SWQYASABKAlSBlVuaXRJZBIeCgpVbml0UHJlZml4GAIgASgJUgpVbml0UHJlZml4EigKD1VuaXRGbG9vck51bWJlchgDIAEoCVIPVW5pdEZsb29yTnVtYmVyEh4KClVuaXROdW1iZXIYBCABKAlSClVuaXROdW1iZXISHAoJSXNQcmltYXJ5GAUgASgIUglJc1ByaW1hcnkSMgoIVW5pdFJvbGUYBiABKA4yFi51dGlsaXR5LlVuaXRSb2xlTW9kZWxSCFVuaXRSb2xlEkcKD1VuaXRGdXJuaXNoVHlwZRgHIAEoDjIdLnV0aWxpdHkuVW5pdEZ1cm5pc2hUeXBlTW9kZWxSD1VuaXRGdXJuaXNoVHlwZRIyCghVbml0VHlwZRgIIAEoDjIWLnV0aWxpdHkuVW5pdFR5cGVNb2RlbFIIVW5pdFR5cGUSIQoJTGVhc2VGcm9tGAkgASgJSABSCUxlYXNlRnJvbYgBARIdCgdMZWFzZVRvGAogASgJSAFSB0xlYXNlVG+IAQESHAoJVW5pdFByaWNlGAsgASgBUglVbml0UHJpY2USKAoPTnVtYmVyT2ZCZWRSb29tGAwgASgFUg9OdW1iZXJPZkJlZFJvb20SKgoQTnVtYmVyT2ZCYXRocm9vbRgNIAEoBVIQTnVtYmVyT2ZCYXRocm9vbRIlCgtEZXNjcmlwdGlvbhgOIAEoCUgCUgtEZXNjcmlwdGlvbogBARI4CgpVbml0U3RhdHVzGA8gASgOMhgudXRpbGl0eS5Vbml0U3RhdHVzTW9kZWxSClVuaXRTdGF0dXMSJwoMVW5pdFNvbGREYXRlGBAgASgJSANSDFVuaXRTb2xkRGF0ZYgBARI1CghCdWlsZGluZxgRIAEoCzIZLmJ1aWxkaW5nLkJ1aWxkaW5nUmVxdWVzdFIIQnVpbGRpbmcSJQoEVXNlchgSIAEoCzIRLnVzZXIuVXNlclJlcXVlc3RSBFVzZXISLgoIVW5pdERvY3MYEyADKAsyEi51bml0LlVuaXREb2NNb2RlbFIIVW5pdERvY3MSKwoGVGVuYW50GBQgASgLMhMudW5pdC5UZW5hbnRSZXF1ZXN0UgZUZW5hbnQSIAoLRGF0ZUNyZWF0ZWQYFSABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgWIAEoCVIMRGF0ZU1vZGlmaWVkEh4KCkJ1aWxkaW5nSWQYFyABKAlSCkJ1aWxkaW5nSWQSFgoGVXNlcklkGBggASgJUgZVc2VySWQSKQoFRXJyb3IYGSABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9yQgwKCl9MZWFzZUZyb21CCgoIX0xlYXNlVG9CDgoMX0Rlc2NyaXB0aW9uQg8KDV9Vbml0U29sZERhdGU=');
@$core.Deprecated('Use tenantRequestDescriptor instead')
const TenantRequest$json = const {
  '1': 'TenantRequest',
  '2': const [
    const {'1': 'AddTenantId', '3': 1, '4': 1, '5': 9, '10': 'AddTenantId'},
    const {'1': 'Unit', '3': 2, '4': 1, '5': 11, '6': '.unit.UnitRequest', '10': 'Unit'},
    const {'1': 'User', '3': 3, '4': 1, '5': 11, '6': '.user.UserRequest', '10': 'User'},
    const {'1': 'UnitRole', '3': 4, '4': 1, '5': 14, '6': '.utility.UnitRoleModel', '10': 'UnitRole'},
    const {'1': 'TenantStart', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'TenantStart', '17': true},
    const {'1': 'TenantEnd', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'TenantEnd', '17': true},
    const {'1': 'Status', '3': 7, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
  ],
  '8': const [
    const {'1': '_TenantStart'},
    const {'1': '_TenantEnd'},
  ],
};

/// Descriptor for `TenantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tenantRequestDescriptor = $convert.base64Decode('Cg1UZW5hbnRSZXF1ZXN0EiAKC0FkZFRlbmFudElkGAEgASgJUgtBZGRUZW5hbnRJZBIlCgRVbml0GAIgASgLMhEudW5pdC5Vbml0UmVxdWVzdFIEVW5pdBIlCgRVc2VyGAMgASgLMhEudXNlci5Vc2VyUmVxdWVzdFIEVXNlchIyCghVbml0Um9sZRgEIAEoDjIWLnV0aWxpdHkuVW5pdFJvbGVNb2RlbFIIVW5pdFJvbGUSJQoLVGVuYW50U3RhcnQYBSABKAlIAFILVGVuYW50U3RhcnSIAQESIQoJVGVuYW50RW5kGAYgASgJSAFSCVRlbmFudEVuZIgBARIsCgZTdGF0dXMYByABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXNCDgoMX1RlbmFudFN0YXJ0QgwKCl9UZW5hbnRFbmQ=');
@$core.Deprecated('Use unitDocModelDescriptor instead')
const UnitDocModel$json = const {
  '1': 'UnitDocModel',
  '2': const [
    const {'1': 'UnitDocId', '3': 1, '4': 1, '5': 9, '10': 'UnitDocId'},
    const {'1': 'File', '3': 2, '4': 1, '5': 12, '10': 'File'},
    const {'1': 'FileType', '3': 3, '4': 1, '5': 9, '10': 'FileType'},
    const {'1': 'FileName', '3': 4, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'Unit', '3': 5, '4': 1, '5': 11, '6': '.unit.UnitRequest', '10': 'Unit'},
    const {'1': 'Error', '3': 6, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `UnitDocModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitDocModelDescriptor = $convert.base64Decode('CgxVbml0RG9jTW9kZWwSHAoJVW5pdERvY0lkGAEgASgJUglVbml0RG9jSWQSEgoERmlsZRgCIAEoDFIERmlsZRIaCghGaWxlVHlwZRgDIAEoCVIIRmlsZVR5cGUSGgoIRmlsZU5hbWUYBCABKAlSCEZpbGVOYW1lEiUKBFVuaXQYBSABKAsyES51bml0LlVuaXRSZXF1ZXN0UgRVbml0EikKBUVycm9yGAYgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use unitsListDescriptor instead')
const UnitsList$json = const {
  '1': 'UnitsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.unit.UnitRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `UnitsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitsListDescriptor = $convert.base64Decode('CglVbml0c0xpc3QSJwoFSXRlbXMYASADKAsyES51bml0LlVuaXRSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
