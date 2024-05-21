///
//  Generated code. Do not modify.
//  source: accounts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountsResponseDescriptor instead')
const AccountsResponse$json = const {
  '1': 'AccountsResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AccountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountsResponseDescriptor = $convert.base64Decode('ChBBY2NvdW50c1Jlc3BvbnNlEhoKCFJlc3BvbnNlGAEgASgJUghSZXNwb25zZRISCgRJc09rGAIgASgIUgRJc09rEikKBUVycm9yGAMgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use accountsRequestDescriptor instead')
const AccountsRequest$json = const {
  '1': 'AccountsRequest',
  '2': const [
    const {'1': 'AccountsId', '3': 1, '4': 1, '5': 9, '10': 'AccountsId'},
    const {'1': 'User', '3': 2, '4': 1, '5': 11, '6': '.user.UserRequest', '10': 'User'},
    const {'1': 'FeeTitle', '3': 3, '4': 1, '5': 9, '10': 'FeeTitle'},
    const {'1': 'Fees', '3': 4, '4': 1, '5': 1, '10': 'Fees'},
    const {'1': 'Description', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'Description', '17': true},
    const {'1': 'PaymentStatus', '3': 6, '4': 1, '5': 14, '6': '.utility.PaymentStatusModel', '10': 'PaymentStatus'},
    const {'1': 'DateCreated', '3': 7, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 8, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 9, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'ResidenceId', '3': 10, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'CreatedByUserId', '3': 11, '4': 1, '5': 9, '10': 'CreatedByUserId'},
    const {'1': 'UsersList', '3': 12, '4': 3, '5': 11, '6': '.user.UserRequest', '10': 'UsersList'},
    const {'1': 'PaymentFor', '3': 13, '4': 1, '5': 14, '6': '.utility.BillModel', '10': 'PaymentFor'},
    const {'1': 'UnitId', '3': 14, '4': 1, '5': 9, '10': 'UnitId'},
    const {'1': 'Repeat', '3': 15, '4': 1, '5': 9, '10': 'Repeat'},
    const {'1': 'SendDate', '3': 16, '4': 1, '5': 9, '10': 'SendDate'},
    const {'1': 'IsClose', '3': 17, '4': 1, '5': 8, '10': 'IsClose'},
    const {'1': 'VerifiedByAdmin', '3': 18, '4': 1, '5': 8, '10': 'VerifiedByAdmin'},
    const {'1': 'PaymentBy', '3': 19, '4': 1, '5': 14, '6': '.utility.PaymentByModel', '10': 'PaymentBy'},
    const {'1': 'PaymentProof', '3': 20, '4': 1, '5': 12, '10': 'PaymentProof'},
    const {'1': 'AdminpaymentStatus', '3': 21, '4': 1, '5': 14, '6': '.utility.AdminpaymentStatusModel', '10': 'AdminpaymentStatus'},
  ],
  '8': const [
    const {'1': '_Description'},
  ],
};

/// Descriptor for `AccountsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountsRequestDescriptor = $convert.base64Decode('Cg9BY2NvdW50c1JlcXVlc3QSHgoKQWNjb3VudHNJZBgBIAEoCVIKQWNjb3VudHNJZBIlCgRVc2VyGAIgASgLMhEudXNlci5Vc2VyUmVxdWVzdFIEVXNlchIaCghGZWVUaXRsZRgDIAEoCVIIRmVlVGl0bGUSEgoERmVlcxgEIAEoAVIERmVlcxIlCgtEZXNjcmlwdGlvbhgFIAEoCUgAUgtEZXNjcmlwdGlvbogBARJBCg1QYXltZW50U3RhdHVzGAYgASgOMhsudXRpbGl0eS5QYXltZW50U3RhdHVzTW9kZWxSDVBheW1lbnRTdGF0dXMSIAoLRGF0ZUNyZWF0ZWQYByABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgIIAEoCVIMRGF0ZU1vZGlmaWVkEikKBUVycm9yGAkgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvchIgCgtSZXNpZGVuY2VJZBgKIAEoCVILUmVzaWRlbmNlSWQSKAoPQ3JlYXRlZEJ5VXNlcklkGAsgASgJUg9DcmVhdGVkQnlVc2VySWQSLwoJVXNlcnNMaXN0GAwgAygLMhEudXNlci5Vc2VyUmVxdWVzdFIJVXNlcnNMaXN0EjIKClBheW1lbnRGb3IYDSABKA4yEi51dGlsaXR5LkJpbGxNb2RlbFIKUGF5bWVudEZvchIWCgZVbml0SWQYDiABKAlSBlVuaXRJZBIWCgZSZXBlYXQYDyABKAlSBlJlcGVhdBIaCghTZW5kRGF0ZRgQIAEoCVIIU2VuZERhdGUSGAoHSXNDbG9zZRgRIAEoCFIHSXNDbG9zZRIoCg9WZXJpZmllZEJ5QWRtaW4YEiABKAhSD1ZlcmlmaWVkQnlBZG1pbhI1CglQYXltZW50QnkYEyABKA4yFy51dGlsaXR5LlBheW1lbnRCeU1vZGVsUglQYXltZW50QnkSIgoMUGF5bWVudFByb29mGBQgASgMUgxQYXltZW50UHJvb2YSUAoSQWRtaW5wYXltZW50U3RhdHVzGBUgASgOMiAudXRpbGl0eS5BZG1pbnBheW1lbnRTdGF0dXNNb2RlbFISQWRtaW5wYXltZW50U3RhdHVzQg4KDF9EZXNjcmlwdGlvbg==');
@$core.Deprecated('Use unitAccountsRequestDescriptor instead')
const UnitAccountsRequest$json = const {
  '1': 'UnitAccountsRequest',
  '2': const [
    const {'1': 'UnitId', '3': 1, '4': 1, '5': 9, '10': 'UnitId'},
  ],
};

/// Descriptor for `UnitAccountsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitAccountsRequestDescriptor = $convert.base64Decode('ChNVbml0QWNjb3VudHNSZXF1ZXN0EhYKBlVuaXRJZBgBIAEoCVIGVW5pdElk');
@$core.Deprecated('Use unitAccountsResponseDescriptor instead')
const UnitAccountsResponse$json = const {
  '1': 'UnitAccountsResponse',
  '2': const [
    const {'1': 'MaintainPending', '3': 1, '4': 1, '5': 9, '10': 'MaintainPending'},
    const {'1': 'RenovationDeposite', '3': 2, '4': 1, '5': 9, '10': 'RenovationDeposite'},
    const {'1': 'Renovationrefund', '3': 3, '4': 1, '5': 9, '10': 'Renovationrefund'},
    const {'1': 'PenantyPending', '3': 4, '4': 1, '5': 9, '10': 'PenantyPending'},
    const {'1': 'FacilitiesDeposite', '3': 5, '4': 1, '5': 9, '10': 'FacilitiesDeposite'},
    const {'1': 'FacilitiesUsagePending', '3': 6, '4': 1, '5': 9, '10': 'FacilitiesUsagePending'},
    const {'1': 'MaintainItems', '3': 7, '4': 3, '5': 11, '6': '.accounts.AccountsRequest', '10': 'MaintainItems'},
    const {'1': 'RenovationItems', '3': 8, '4': 3, '5': 11, '6': '.accounts.AccountsRequest', '10': 'RenovationItems'},
    const {'1': 'PenantyItems', '3': 9, '4': 3, '5': 11, '6': '.accounts.AccountsRequest', '10': 'PenantyItems'},
    const {'1': 'FacilitiesItems', '3': 10, '4': 3, '5': 11, '6': '.accounts.AccountsRequest', '10': 'FacilitiesItems'},
    const {'1': 'OwnerTenantIfo', '3': 11, '4': 1, '5': 11, '6': '.unit.OwnerTenantIfo', '10': 'OwnerTenantIfo'},
    const {'1': 'UnitIfo', '3': 12, '4': 1, '5': 11, '6': '.unit.UnitRequest', '10': 'UnitIfo'},
    const {'1': 'Error', '3': 13, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `UnitAccountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unitAccountsResponseDescriptor = $convert.base64Decode('ChRVbml0QWNjb3VudHNSZXNwb25zZRIoCg9NYWludGFpblBlbmRpbmcYASABKAlSD01haW50YWluUGVuZGluZxIuChJSZW5vdmF0aW9uRGVwb3NpdGUYAiABKAlSElJlbm92YXRpb25EZXBvc2l0ZRIqChBSZW5vdmF0aW9ucmVmdW5kGAMgASgJUhBSZW5vdmF0aW9ucmVmdW5kEiYKDlBlbmFudHlQZW5kaW5nGAQgASgJUg5QZW5hbnR5UGVuZGluZxIuChJGYWNpbGl0aWVzRGVwb3NpdGUYBSABKAlSEkZhY2lsaXRpZXNEZXBvc2l0ZRI2ChZGYWNpbGl0aWVzVXNhZ2VQZW5kaW5nGAYgASgJUhZGYWNpbGl0aWVzVXNhZ2VQZW5kaW5nEj8KDU1haW50YWluSXRlbXMYByADKAsyGS5hY2NvdW50cy5BY2NvdW50c1JlcXVlc3RSDU1haW50YWluSXRlbXMSQwoPUmVub3ZhdGlvbkl0ZW1zGAggAygLMhkuYWNjb3VudHMuQWNjb3VudHNSZXF1ZXN0Ug9SZW5vdmF0aW9uSXRlbXMSPQoMUGVuYW50eUl0ZW1zGAkgAygLMhkuYWNjb3VudHMuQWNjb3VudHNSZXF1ZXN0UgxQZW5hbnR5SXRlbXMSQwoPRmFjaWxpdGllc0l0ZW1zGAogAygLMhkuYWNjb3VudHMuQWNjb3VudHNSZXF1ZXN0Ug9GYWNpbGl0aWVzSXRlbXMSPAoOT3duZXJUZW5hbnRJZm8YCyABKAsyFC51bml0Lk93bmVyVGVuYW50SWZvUg5Pd25lclRlbmFudElmbxIrCgdVbml0SWZvGAwgASgLMhEudW5pdC5Vbml0UmVxdWVzdFIHVW5pdElmbxIpCgVFcnJvchgNIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use accountsLookupModelDescriptor instead')
const AccountsLookupModel$json = const {
  '1': 'AccountsLookupModel',
  '2': const [
    const {'1': 'AccountsId', '3': 1, '4': 1, '5': 9, '10': 'AccountsId'},
  ],
};

/// Descriptor for `AccountsLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountsLookupModelDescriptor = $convert.base64Decode('ChNBY2NvdW50c0xvb2t1cE1vZGVsEh4KCkFjY291bnRzSWQYASABKAlSCkFjY291bnRzSWQ=');
@$core.Deprecated('Use residenceAccountsLookupModelDescriptor instead')
const ResidenceAccountsLookupModel$json = const {
  '1': 'ResidenceAccountsLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'User', '3': 2, '4': 1, '5': 9, '10': 'User'},
    const {'1': 'PaymentStatus', '3': 3, '4': 1, '5': 14, '6': '.utility.PaymentStatusModel', '10': 'PaymentStatus'},
    const {'1': 'PaymentFor', '3': 4, '4': 1, '5': 14, '6': '.utility.BillModel', '10': 'PaymentFor'},
    const {'1': 'DateCreated', '3': 5, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 6, '4': 1, '5': 9, '10': 'DateModified'},
  ],
};

/// Descriptor for `ResidenceAccountsLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceAccountsLookupModelDescriptor = $convert.base64Decode('ChxSZXNpZGVuY2VBY2NvdW50c0xvb2t1cE1vZGVsEiAKC1Jlc2lkZW5jZUlkGAEgASgJUgtSZXNpZGVuY2VJZBISCgRVc2VyGAIgASgJUgRVc2VyEkEKDVBheW1lbnRTdGF0dXMYAyABKA4yGy51dGlsaXR5LlBheW1lbnRTdGF0dXNNb2RlbFINUGF5bWVudFN0YXR1cxIyCgpQYXltZW50Rm9yGAQgASgOMhIudXRpbGl0eS5CaWxsTW9kZWxSClBheW1lbnRGb3ISIAoLRGF0ZUNyZWF0ZWQYBSABKAlSC0RhdGVDcmVhdGVkEiIKDERhdGVNb2RpZmllZBgGIAEoCVIMRGF0ZU1vZGlmaWVk');
@$core.Deprecated('Use accountsListDescriptor instead')
const AccountsList$json = const {
  '1': 'AccountsList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.accounts.AccountsRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AccountsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountsListDescriptor = $convert.base64Decode('CgxBY2NvdW50c0xpc3QSLwoFSXRlbXMYASADKAsyGS5hY2NvdW50cy5BY2NvdW50c1JlcXVlc3RSBUl0ZW1zEikKBUVycm9yGAIgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
