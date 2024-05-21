///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = const {
  '1': 'UserResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode('CgxVc2VyUmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEhIKBElzT2sYAiABKAhSBElzT2sSKQoFRXJyb3IYAyABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use userRequestDescriptor instead')
const UserRequest$json = const {
  '1': 'UserRequest',
  '2': const [
    const {'1': 'UserId', '3': 1, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'FirstName', '3': 2, '4': 1, '5': 9, '10': 'FirstName'},
    const {'1': 'LastName', '3': 3, '4': 1, '5': 9, '10': 'LastName'},
    const {'1': 'DOB', '3': 4, '4': 1, '5': 9, '10': 'DOB'},
    const {'1': 'Email', '3': 5, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'RegisteredHostName', '3': 6, '4': 1, '5': 9, '10': 'RegisteredHostName'},
    const {'1': 'Gender', '3': 7, '4': 1, '5': 14, '6': '.utility.GenderModel', '10': 'Gender'},
    const {'1': 'Status', '3': 8, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'Role', '3': 9, '4': 3, '5': 14, '6': '.utility.AccountRoleModel', '10': 'Role'},
    const {'1': 'Occupation', '3': 10, '4': 1, '5': 9, '10': 'Occupation'},
    const {'1': 'NRIC', '3': 11, '4': 1, '5': 9, '10': 'NRIC'},
    const {'1': 'Passport', '3': 12, '4': 1, '5': 9, '10': 'Passport'},
    const {'1': 'PhoneNumber', '3': 13, '4': 1, '5': 9, '10': 'PhoneNumber'},
    const {'1': 'ProfilePicture', '3': 14, '4': 1, '5': 12, '10': 'ProfilePicture'},
    const {'1': 'CreatedBy', '3': 15, '4': 1, '5': 9, '10': 'CreatedBy'},
    const {'1': 'BankName', '3': 16, '4': 1, '5': 9, '10': 'BankName'},
    const {'1': 'AccountNumber', '3': 17, '4': 1, '5': 9, '10': 'AccountNumber'},
    const {'1': 'AccountHolderName', '3': 18, '4': 1, '5': 9, '10': 'AccountHolderName'},
    const {'1': 'RegisteredIP', '3': 19, '4': 1, '5': 9, '10': 'RegisteredIP'},
    const {'1': 'LastLoginIP', '3': 20, '4': 1, '5': 9, '10': 'LastLoginIP'},
    const {'1': 'LastLogin', '3': 21, '4': 1, '5': 9, '10': 'LastLogin'},
    const {'1': 'IsPasswordFormat', '3': 22, '4': 1, '5': 5, '10': 'IsPasswordFormat'},
    const {'1': 'LastPasswordUpdated', '3': 23, '4': 1, '5': 9, '10': 'LastPasswordUpdated'},
    const {'1': 'Terms', '3': 24, '4': 1, '5': 8, '10': 'Terms'},
    const {'1': 'DateCreated', '3': 25, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 26, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 27, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'Nationality', '3': 28, '4': 1, '5': 14, '6': '.utility.NationalityModel', '10': 'Nationality'},
    const {'1': 'ModifiedBy', '3': 29, '4': 1, '5': 9, '10': 'ModifiedBy'},
    const {'1': 'ModifiedIP', '3': 30, '4': 1, '5': 9, '10': 'ModifiedIP'},
    const {'1': 'ModifiedHostName', '3': 31, '4': 1, '5': 9, '10': 'ModifiedHostName'},
    const {'1': 'ModifiedCount', '3': 32, '4': 1, '5': 5, '10': 'ModifiedCount'},
    const {'1': 'ResidenceId', '3': 33, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'ResidenceName', '3': 34, '4': 1, '5': 9, '10': 'ResidenceName'},
    const {'1': 'ParkingLotNo', '3': 35, '4': 1, '5': 9, '10': 'ParkingLotNo'},
  ],
};

/// Descriptor for `UserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRequestDescriptor = $convert.base64Decode('CgtVc2VyUmVxdWVzdBIWCgZVc2VySWQYASABKAlSBlVzZXJJZBIcCglGaXJzdE5hbWUYAiABKAlSCUZpcnN0TmFtZRIaCghMYXN0TmFtZRgDIAEoCVIITGFzdE5hbWUSEAoDRE9CGAQgASgJUgNET0ISFAoFRW1haWwYBSABKAlSBUVtYWlsEi4KElJlZ2lzdGVyZWRIb3N0TmFtZRgGIAEoCVISUmVnaXN0ZXJlZEhvc3ROYW1lEiwKBkdlbmRlchgHIAEoDjIULnV0aWxpdHkuR2VuZGVyTW9kZWxSBkdlbmRlchIsCgZTdGF0dXMYCCABKA4yFC51dGlsaXR5LlN0YXR1c01vZGVsUgZTdGF0dXMSLQoEUm9sZRgJIAMoDjIZLnV0aWxpdHkuQWNjb3VudFJvbGVNb2RlbFIEUm9sZRIeCgpPY2N1cGF0aW9uGAogASgJUgpPY2N1cGF0aW9uEhIKBE5SSUMYCyABKAlSBE5SSUMSGgoIUGFzc3BvcnQYDCABKAlSCFBhc3Nwb3J0EiAKC1Bob25lTnVtYmVyGA0gASgJUgtQaG9uZU51bWJlchImCg5Qcm9maWxlUGljdHVyZRgOIAEoDFIOUHJvZmlsZVBpY3R1cmUSHAoJQ3JlYXRlZEJ5GA8gASgJUglDcmVhdGVkQnkSGgoIQmFua05hbWUYECABKAlSCEJhbmtOYW1lEiQKDUFjY291bnROdW1iZXIYESABKAlSDUFjY291bnROdW1iZXISLAoRQWNjb3VudEhvbGRlck5hbWUYEiABKAlSEUFjY291bnRIb2xkZXJOYW1lEiIKDFJlZ2lzdGVyZWRJUBgTIAEoCVIMUmVnaXN0ZXJlZElQEiAKC0xhc3RMb2dpbklQGBQgASgJUgtMYXN0TG9naW5JUBIcCglMYXN0TG9naW4YFSABKAlSCUxhc3RMb2dpbhIqChBJc1Bhc3N3b3JkRm9ybWF0GBYgASgFUhBJc1Bhc3N3b3JkRm9ybWF0EjAKE0xhc3RQYXNzd29yZFVwZGF0ZWQYFyABKAlSE0xhc3RQYXNzd29yZFVwZGF0ZWQSFAoFVGVybXMYGCABKAhSBVRlcm1zEiAKC0RhdGVDcmVhdGVkGBkgASgJUgtEYXRlQ3JlYXRlZBIiCgxEYXRlTW9kaWZpZWQYGiABKAlSDERhdGVNb2RpZmllZBIpCgVFcnJvchgbIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3ISOwoLTmF0aW9uYWxpdHkYHCABKA4yGS51dGlsaXR5Lk5hdGlvbmFsaXR5TW9kZWxSC05hdGlvbmFsaXR5Eh4KCk1vZGlmaWVkQnkYHSABKAlSCk1vZGlmaWVkQnkSHgoKTW9kaWZpZWRJUBgeIAEoCVIKTW9kaWZpZWRJUBIqChBNb2RpZmllZEhvc3ROYW1lGB8gASgJUhBNb2RpZmllZEhvc3ROYW1lEiQKDU1vZGlmaWVkQ291bnQYICABKAVSDU1vZGlmaWVkQ291bnQSIAoLUmVzaWRlbmNlSWQYISABKAlSC1Jlc2lkZW5jZUlkEiQKDVJlc2lkZW5jZU5hbWUYIiABKAlSDVJlc2lkZW5jZU5hbWUSIgoMUGFya2luZ0xvdE5vGCMgASgJUgxQYXJraW5nTG90Tm8=');
@$core.Deprecated('Use userLookupModelDescriptor instead')
const UserLookupModel$json = const {
  '1': 'UserLookupModel',
  '2': const [
    const {'1': 'UserId', '3': 1, '4': 1, '5': 9, '10': 'UserId'},
  ],
};

/// Descriptor for `UserLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLookupModelDescriptor = $convert.base64Decode('Cg9Vc2VyTG9va3VwTW9kZWwSFgoGVXNlcklkGAEgASgJUgZVc2VySWQ=');
@$core.Deprecated('Use residenceUserLookupModelDescriptor instead')
const ResidenceUserLookupModel$json = const {
  '1': 'ResidenceUserLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResidenceUserLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List residenceUserLookupModelDescriptor = $convert.base64Decode('ChhSZXNpZGVuY2VVc2VyTG9va3VwTW9kZWwSIAoLUmVzaWRlbmNlSWQYASABKAlSC1Jlc2lkZW5jZUlk');
@$core.Deprecated('Use usersListDescriptor instead')
const UsersList$json = const {
  '1': 'UsersList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.user.UserRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `UsersList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersListDescriptor = $convert.base64Decode('CglVc2Vyc0xpc3QSJwoFSXRlbXMYASADKAsyES51c2VyLlVzZXJSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
