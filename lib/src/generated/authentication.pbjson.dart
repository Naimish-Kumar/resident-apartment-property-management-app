///
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use deviceTokenResponseDescriptor instead')
const DeviceTokenResponse$json = const {
  '1': 'DeviceTokenResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `DeviceTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceTokenResponseDescriptor = $convert.base64Decode('ChNEZXZpY2VUb2tlblJlc3BvbnNlEhoKCFJlc3BvbnNlGAEgASgJUghSZXNwb25zZRIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use deviceTokenRequestDescriptor instead')
const DeviceTokenRequest$json = const {
  '1': 'DeviceTokenRequest',
  '2': const [
    const {'1': 'DeviceToken', '3': 1, '4': 1, '5': 9, '10': 'DeviceToken'},
    const {'1': 'UserId', '3': 2, '4': 1, '5': 9, '10': 'UserId'},
  ],
};

/// Descriptor for `DeviceTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceTokenRequestDescriptor = $convert.base64Decode('ChJEZXZpY2VUb2tlblJlcXVlc3QSIAoLRGV2aWNlVG9rZW4YASABKAlSC0RldmljZVRva2VuEhYKBlVzZXJJZBgCIAEoCVIGVXNlcklk');
@$core.Deprecated('Use authenticationRequestDescriptor instead')
const AuthenticationRequest$json = const {
  '1': 'AuthenticationRequest',
  '2': const [
    const {'1': 'Email', '3': 1, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'Password', '3': 2, '4': 1, '5': 9, '10': 'Password'},
    const {'1': 'AccessTokenSecret', '3': 3, '4': 1, '5': 9, '10': 'AccessTokenSecret'},
    const {'1': 'AesSecret', '3': 4, '4': 1, '5': 9, '10': 'AesSecret'},
    const {'1': 'AccesTokenExpirationMinutes', '3': 5, '4': 1, '5': 1, '10': 'AccesTokenExpirationMinutes'},
    const {'1': 'Issuer', '3': 6, '4': 1, '5': 9, '10': 'Issuer'},
    const {'1': 'Audience', '3': 7, '4': 1, '5': 9, '10': 'Audience'},
    const {'1': 'RefreshTokenSecret', '3': 8, '4': 1, '5': 9, '10': 'RefreshTokenSecret'},
    const {'1': 'RefreshTokenExpirationMinutes', '3': 9, '4': 1, '5': 1, '10': 'RefreshTokenExpirationMinutes'},
    const {'1': 'Id', '3': 10, '4': 1, '5': 9, '10': 'Id'},
    const {'1': 'UserName', '3': 11, '4': 1, '5': 9, '10': 'UserName'},
    const {'1': 'Role', '3': 12, '4': 3, '5': 14, '6': '.utility.AccountRoleModel', '10': 'Role'},
    const {'1': 'RefreshToken', '3': 13, '4': 1, '5': 9, '10': 'RefreshToken'},
    const {'1': 'ResidenceId', '3': 14, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `AuthenticationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticationRequestDescriptor = $convert.base64Decode('ChVBdXRoZW50aWNhdGlvblJlcXVlc3QSFAoFRW1haWwYASABKAlSBUVtYWlsEhoKCFBhc3N3b3JkGAIgASgJUghQYXNzd29yZBIsChFBY2Nlc3NUb2tlblNlY3JldBgDIAEoCVIRQWNjZXNzVG9rZW5TZWNyZXQSHAoJQWVzU2VjcmV0GAQgASgJUglBZXNTZWNyZXQSQAobQWNjZXNUb2tlbkV4cGlyYXRpb25NaW51dGVzGAUgASgBUhtBY2Nlc1Rva2VuRXhwaXJhdGlvbk1pbnV0ZXMSFgoGSXNzdWVyGAYgASgJUgZJc3N1ZXISGgoIQXVkaWVuY2UYByABKAlSCEF1ZGllbmNlEi4KElJlZnJlc2hUb2tlblNlY3JldBgIIAEoCVISUmVmcmVzaFRva2VuU2VjcmV0EkQKHVJlZnJlc2hUb2tlbkV4cGlyYXRpb25NaW51dGVzGAkgASgBUh1SZWZyZXNoVG9rZW5FeHBpcmF0aW9uTWludXRlcxIOCgJJZBgKIAEoCVICSWQSGgoIVXNlck5hbWUYCyABKAlSCFVzZXJOYW1lEi0KBFJvbGUYDCADKA4yGS51dGlsaXR5LkFjY291bnRSb2xlTW9kZWxSBFJvbGUSIgoMUmVmcmVzaFRva2VuGA0gASgJUgxSZWZyZXNoVG9rZW4SIAoLUmVzaWRlbmNlSWQYDiABKAlSC1Jlc2lkZW5jZUlk');
@$core.Deprecated('Use authenticationResponseDescriptor instead')
const AuthenticationResponse$json = const {
  '1': 'AuthenticationResponse',
  '2': const [
    const {'1': 'AccessToken', '3': 1, '4': 1, '5': 9, '10': 'AccessToken'},
    const {'1': 'RefreshToken', '3': 2, '4': 1, '5': 9, '10': 'RefreshToken'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AuthenticationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticationResponseDescriptor = $convert.base64Decode('ChZBdXRoZW50aWNhdGlvblJlc3BvbnNlEiAKC0FjY2Vzc1Rva2VuGAEgASgJUgtBY2Nlc3NUb2tlbhIiCgxSZWZyZXNoVG9rZW4YAiABKAlSDFJlZnJlc2hUb2tlbhIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use appAuthenticationResponseDescriptor instead')
const AppAuthenticationResponse$json = const {
  '1': 'AppAuthenticationResponse',
  '2': const [
    const {'1': 'AccessToken', '3': 1, '4': 1, '5': 9, '10': 'AccessToken'},
    const {'1': 'RefreshToken', '3': 2, '4': 1, '5': 9, '10': 'RefreshToken'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AppAuthenticationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appAuthenticationResponseDescriptor = $convert.base64Decode('ChlBcHBBdXRoZW50aWNhdGlvblJlc3BvbnNlEiAKC0FjY2Vzc1Rva2VuGAEgASgJUgtBY2Nlc3NUb2tlbhIiCgxSZWZyZXNoVG9rZW4YAiABKAlSDFJlZnJlc2hUb2tlbhIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use accountActivateRequestDescriptor instead')
const AccountActivateRequest$json = const {
  '1': 'AccountActivateRequest',
  '2': const [
    const {'1': 'Email', '3': 1, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'Otp', '3': 2, '4': 1, '5': 9, '10': 'Otp'},
    const {'1': 'PasswordHash', '3': 3, '4': 1, '5': 9, '10': 'PasswordHash'},
  ],
};

/// Descriptor for `AccountActivateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountActivateRequestDescriptor = $convert.base64Decode('ChZBY2NvdW50QWN0aXZhdGVSZXF1ZXN0EhQKBUVtYWlsGAEgASgJUgVFbWFpbBIQCgNPdHAYAiABKAlSA090cBIiCgxQYXNzd29yZEhhc2gYAyABKAlSDFBhc3N3b3JkSGFzaA==');
@$core.Deprecated('Use accountActivateResponseDescriptor instead')
const AccountActivateResponse$json = const {
  '1': 'AccountActivateResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `AccountActivateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountActivateResponseDescriptor = $convert.base64Decode('ChdBY2NvdW50QWN0aXZhdGVSZXNwb25zZRIaCghSZXNwb25zZRgBIAEoCVIIUmVzcG9uc2USKQoFRXJyb3IYAiABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use forgotPasswordRequestDescriptor instead')
const ForgotPasswordRequest$json = const {
  '1': 'ForgotPasswordRequest',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    const {'1': 'Email', '3': 2, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'ForgotPasswordSecret', '3': 3, '4': 1, '5': 9, '10': 'ForgotPasswordSecret'},
    const {'1': 'AesSecret', '3': 4, '4': 1, '5': 9, '10': 'AesSecret'},
    const {'1': 'ForgotPasswordExpirationMinutes', '3': 5, '4': 1, '5': 1, '10': 'ForgotPasswordExpirationMinutes'},
    const {'1': 'Issuer', '3': 6, '4': 1, '5': 9, '10': 'Issuer'},
    const {'1': 'Audience', '3': 7, '4': 1, '5': 9, '10': 'Audience'},
  ],
};

/// Descriptor for `ForgotPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordRequestDescriptor = $convert.base64Decode('ChVGb3Jnb3RQYXNzd29yZFJlcXVlc3QSDgoCSWQYASABKAlSAklkEhQKBUVtYWlsGAIgASgJUgVFbWFpbBIyChRGb3Jnb3RQYXNzd29yZFNlY3JldBgDIAEoCVIURm9yZ290UGFzc3dvcmRTZWNyZXQSHAoJQWVzU2VjcmV0GAQgASgJUglBZXNTZWNyZXQSSAofRm9yZ290UGFzc3dvcmRFeHBpcmF0aW9uTWludXRlcxgFIAEoAVIfRm9yZ290UGFzc3dvcmRFeHBpcmF0aW9uTWludXRlcxIWCgZJc3N1ZXIYBiABKAlSBklzc3VlchIaCghBdWRpZW5jZRgHIAEoCVIIQXVkaWVuY2U=');
@$core.Deprecated('Use forgotPasswordResponseDescriptor instead')
const ForgotPasswordResponse$json = const {
  '1': 'ForgotPasswordResponse',
  '2': const [
    const {'1': 'AccessToken', '3': 1, '4': 1, '5': 9, '10': 'AccessToken'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'Response', '3': 3, '4': 1, '5': 9, '10': 'Response'},
  ],
};

/// Descriptor for `ForgotPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordResponseDescriptor = $convert.base64Decode('ChZGb3Jnb3RQYXNzd29yZFJlc3BvbnNlEiAKC0FjY2Vzc1Rva2VuGAEgASgJUgtBY2Nlc3NUb2tlbhIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3ISGgoIUmVzcG9uc2UYAyABKAlSCFJlc3BvbnNl');
@$core.Deprecated('Use resetPasswordRequestDescriptor instead')
const ResetPasswordRequest$json = const {
  '1': 'ResetPasswordRequest',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 9, '10': 'Token'},
    const {'1': 'Id', '3': 2, '4': 1, '5': 9, '10': 'Id'},
    const {'1': 'PasswordHash', '3': 3, '4': 1, '5': 9, '10': 'PasswordHash'},
  ],
};

/// Descriptor for `ResetPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordRequestDescriptor = $convert.base64Decode('ChRSZXNldFBhc3N3b3JkUmVxdWVzdBIUCgVUb2tlbhgBIAEoCVIFVG9rZW4SDgoCSWQYAiABKAlSAklkEiIKDFBhc3N3b3JkSGFzaBgDIAEoCVIMUGFzc3dvcmRIYXNo');
@$core.Deprecated('Use resetPasswordResponseDescriptor instead')
const ResetPasswordResponse$json = const {
  '1': 'ResetPasswordResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `ResetPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordResponseDescriptor = $convert.base64Decode('ChVSZXNldFBhc3N3b3JkUmVzcG9uc2USGgoIUmVzcG9uc2UYASABKAlSCFJlc3BvbnNlEikKBUVycm9yGAIgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
