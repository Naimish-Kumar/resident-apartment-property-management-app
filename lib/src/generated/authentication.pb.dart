///
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

import 'utility.pbenum.dart' as $1;

class DeviceTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  DeviceTokenResponse._() : super();
  factory DeviceTokenResponse({
    $core.String? response,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory DeviceTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceTokenResponse clone() => DeviceTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceTokenResponse copyWith(void Function(DeviceTokenResponse) updates) => super.copyWith((message) => updates(message as DeviceTokenResponse)) as DeviceTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceTokenResponse create() => DeviceTokenResponse._();
  DeviceTokenResponse createEmptyInstance() => create();
  static $pb.PbList<DeviceTokenResponse> createRepeated() => $pb.PbList<DeviceTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static DeviceTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceTokenResponse>(create);
  static DeviceTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $1.ErrorModel get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($1.ErrorModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $1.ErrorModel ensureError() => $_ensure(1);
}

class DeviceTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DeviceToken', protoName: 'DeviceToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..hasRequiredFields = false
  ;

  DeviceTokenRequest._() : super();
  factory DeviceTokenRequest({
    $core.String? deviceToken,
    $core.String? userId,
  }) {
    final _result = create();
    if (deviceToken != null) {
      _result.deviceToken = deviceToken;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory DeviceTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceTokenRequest clone() => DeviceTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceTokenRequest copyWith(void Function(DeviceTokenRequest) updates) => super.copyWith((message) => updates(message as DeviceTokenRequest)) as DeviceTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceTokenRequest create() => DeviceTokenRequest._();
  DeviceTokenRequest createEmptyInstance() => create();
  static $pb.PbList<DeviceTokenRequest> createRepeated() => $pb.PbList<DeviceTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static DeviceTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceTokenRequest>(create);
  static DeviceTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class AuthenticationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Password', protoName: 'Password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccessTokenSecret', protoName: 'AccessTokenSecret')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AesSecret', protoName: 'AesSecret')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccesTokenExpirationMinutes', $pb.PbFieldType.OD, protoName: 'AccesTokenExpirationMinutes')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Issuer', protoName: 'Issuer')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Audience', protoName: 'Audience')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefreshTokenSecret', protoName: 'RefreshTokenSecret')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefreshTokenExpirationMinutes', $pb.PbFieldType.OD, protoName: 'RefreshTokenExpirationMinutes')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', protoName: 'Id')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserName', protoName: 'UserName')
    ..pc<$1.AccountRoleModel>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Role', $pb.PbFieldType.KE, protoName: 'Role', valueOf: $1.AccountRoleModel.valueOf, enumValues: $1.AccountRoleModel.values, defaultEnumValue: $1.AccountRoleModel.ARNull)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefreshToken', protoName: 'RefreshToken')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  AuthenticationRequest._() : super();
  factory AuthenticationRequest({
    $core.String? email,
    $core.String? password,
    $core.String? accessTokenSecret,
    $core.String? aesSecret,
    $core.double? accesTokenExpirationMinutes,
    $core.String? issuer,
    $core.String? audience,
    $core.String? refreshTokenSecret,
    $core.double? refreshTokenExpirationMinutes,
    $core.String? id,
    $core.String? userName,
    $core.Iterable<$1.AccountRoleModel>? role,
    $core.String? refreshToken,
    $core.String? residenceId,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    if (accessTokenSecret != null) {
      _result.accessTokenSecret = accessTokenSecret;
    }
    if (aesSecret != null) {
      _result.aesSecret = aesSecret;
    }
    if (accesTokenExpirationMinutes != null) {
      _result.accesTokenExpirationMinutes = accesTokenExpirationMinutes;
    }
    if (issuer != null) {
      _result.issuer = issuer;
    }
    if (audience != null) {
      _result.audience = audience;
    }
    if (refreshTokenSecret != null) {
      _result.refreshTokenSecret = refreshTokenSecret;
    }
    if (refreshTokenExpirationMinutes != null) {
      _result.refreshTokenExpirationMinutes = refreshTokenExpirationMinutes;
    }
    if (id != null) {
      _result.id = id;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    if (role != null) {
      _result.role.addAll(role);
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory AuthenticationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticationRequest clone() => AuthenticationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticationRequest copyWith(void Function(AuthenticationRequest) updates) => super.copyWith((message) => updates(message as AuthenticationRequest)) as AuthenticationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticationRequest create() => AuthenticationRequest._();
  AuthenticationRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticationRequest> createRepeated() => $pb.PbList<AuthenticationRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticationRequest>(create);
  static AuthenticationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessTokenSecret => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessTokenSecret($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessTokenSecret() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessTokenSecret() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get aesSecret => $_getSZ(3);
  @$pb.TagNumber(4)
  set aesSecret($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAesSecret() => $_has(3);
  @$pb.TagNumber(4)
  void clearAesSecret() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get accesTokenExpirationMinutes => $_getN(4);
  @$pb.TagNumber(5)
  set accesTokenExpirationMinutes($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccesTokenExpirationMinutes() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccesTokenExpirationMinutes() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get issuer => $_getSZ(5);
  @$pb.TagNumber(6)
  set issuer($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIssuer() => $_has(5);
  @$pb.TagNumber(6)
  void clearIssuer() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get audience => $_getSZ(6);
  @$pb.TagNumber(7)
  set audience($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAudience() => $_has(6);
  @$pb.TagNumber(7)
  void clearAudience() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get refreshTokenSecret => $_getSZ(7);
  @$pb.TagNumber(8)
  set refreshTokenSecret($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRefreshTokenSecret() => $_has(7);
  @$pb.TagNumber(8)
  void clearRefreshTokenSecret() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get refreshTokenExpirationMinutes => $_getN(8);
  @$pb.TagNumber(9)
  set refreshTokenExpirationMinutes($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRefreshTokenExpirationMinutes() => $_has(8);
  @$pb.TagNumber(9)
  void clearRefreshTokenExpirationMinutes() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get id => $_getSZ(9);
  @$pb.TagNumber(10)
  set id($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasId() => $_has(9);
  @$pb.TagNumber(10)
  void clearId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get userName => $_getSZ(10);
  @$pb.TagNumber(11)
  set userName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUserName() => $_has(10);
  @$pb.TagNumber(11)
  void clearUserName() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$1.AccountRoleModel> get role => $_getList(11);

  @$pb.TagNumber(13)
  $core.String get refreshToken => $_getSZ(12);
  @$pb.TagNumber(13)
  set refreshToken($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRefreshToken() => $_has(12);
  @$pb.TagNumber(13)
  void clearRefreshToken() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get residenceId => $_getSZ(13);
  @$pb.TagNumber(14)
  set residenceId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasResidenceId() => $_has(13);
  @$pb.TagNumber(14)
  void clearResidenceId() => clearField(14);
}

class AuthenticationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccessToken', protoName: 'AccessToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefreshToken', protoName: 'RefreshToken')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AuthenticationResponse._() : super();
  factory AuthenticationResponse({
    $core.String? accessToken,
    $core.String? refreshToken,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory AuthenticationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticationResponse clone() => AuthenticationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticationResponse copyWith(void Function(AuthenticationResponse) updates) => super.copyWith((message) => updates(message as AuthenticationResponse)) as AuthenticationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticationResponse create() => AuthenticationResponse._();
  AuthenticationResponse createEmptyInstance() => create();
  static $pb.PbList<AuthenticationResponse> createRepeated() => $pb.PbList<AuthenticationResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthenticationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticationResponse>(create);
  static AuthenticationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $1.ErrorModel get error => $_getN(2);
  @$pb.TagNumber(3)
  set error($1.ErrorModel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  $1.ErrorModel ensureError() => $_ensure(2);
}

class AppAuthenticationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppAuthenticationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccessToken', protoName: 'AccessToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefreshToken', protoName: 'RefreshToken')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AppAuthenticationResponse._() : super();
  factory AppAuthenticationResponse({
    $core.String? accessToken,
    $core.String? refreshToken,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory AppAuthenticationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppAuthenticationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppAuthenticationResponse clone() => AppAuthenticationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppAuthenticationResponse copyWith(void Function(AppAuthenticationResponse) updates) => super.copyWith((message) => updates(message as AppAuthenticationResponse)) as AppAuthenticationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppAuthenticationResponse create() => AppAuthenticationResponse._();
  AppAuthenticationResponse createEmptyInstance() => create();
  static $pb.PbList<AppAuthenticationResponse> createRepeated() => $pb.PbList<AppAuthenticationResponse>();
  @$core.pragma('dart2js:noInline')
  static AppAuthenticationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppAuthenticationResponse>(create);
  static AppAuthenticationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $1.ErrorModel get error => $_getN(2);
  @$pb.TagNumber(3)
  set error($1.ErrorModel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  $1.ErrorModel ensureError() => $_ensure(2);
}

class AccountActivateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountActivateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Otp', protoName: 'Otp')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PasswordHash', protoName: 'PasswordHash')
    ..hasRequiredFields = false
  ;

  AccountActivateRequest._() : super();
  factory AccountActivateRequest({
    $core.String? email,
    $core.String? otp,
    $core.String? passwordHash,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (otp != null) {
      _result.otp = otp;
    }
    if (passwordHash != null) {
      _result.passwordHash = passwordHash;
    }
    return _result;
  }
  factory AccountActivateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountActivateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountActivateRequest clone() => AccountActivateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountActivateRequest copyWith(void Function(AccountActivateRequest) updates) => super.copyWith((message) => updates(message as AccountActivateRequest)) as AccountActivateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountActivateRequest create() => AccountActivateRequest._();
  AccountActivateRequest createEmptyInstance() => create();
  static $pb.PbList<AccountActivateRequest> createRepeated() => $pb.PbList<AccountActivateRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountActivateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountActivateRequest>(create);
  static AccountActivateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get otp => $_getSZ(1);
  @$pb.TagNumber(2)
  set otp($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtp() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get passwordHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set passwordHash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPasswordHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearPasswordHash() => clearField(3);
}

class AccountActivateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountActivateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AccountActivateResponse._() : super();
  factory AccountActivateResponse({
    $core.String? response,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory AccountActivateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountActivateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountActivateResponse clone() => AccountActivateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountActivateResponse copyWith(void Function(AccountActivateResponse) updates) => super.copyWith((message) => updates(message as AccountActivateResponse)) as AccountActivateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountActivateResponse create() => AccountActivateResponse._();
  AccountActivateResponse createEmptyInstance() => create();
  static $pb.PbList<AccountActivateResponse> createRepeated() => $pb.PbList<AccountActivateResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountActivateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountActivateResponse>(create);
  static AccountActivateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $1.ErrorModel get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($1.ErrorModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $1.ErrorModel ensureError() => $_ensure(1);
}

class ForgotPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForgotPasswordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', protoName: 'Id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ForgotPasswordSecret', protoName: 'ForgotPasswordSecret')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AesSecret', protoName: 'AesSecret')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ForgotPasswordExpirationMinutes', $pb.PbFieldType.OD, protoName: 'ForgotPasswordExpirationMinutes')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Issuer', protoName: 'Issuer')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Audience', protoName: 'Audience')
    ..hasRequiredFields = false
  ;

  ForgotPasswordRequest._() : super();
  factory ForgotPasswordRequest({
    $core.String? id,
    $core.String? email,
    $core.String? forgotPasswordSecret,
    $core.String? aesSecret,
    $core.double? forgotPasswordExpirationMinutes,
    $core.String? issuer,
    $core.String? audience,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (email != null) {
      _result.email = email;
    }
    if (forgotPasswordSecret != null) {
      _result.forgotPasswordSecret = forgotPasswordSecret;
    }
    if (aesSecret != null) {
      _result.aesSecret = aesSecret;
    }
    if (forgotPasswordExpirationMinutes != null) {
      _result.forgotPasswordExpirationMinutes = forgotPasswordExpirationMinutes;
    }
    if (issuer != null) {
      _result.issuer = issuer;
    }
    if (audience != null) {
      _result.audience = audience;
    }
    return _result;
  }
  factory ForgotPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForgotPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForgotPasswordRequest clone() => ForgotPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForgotPasswordRequest copyWith(void Function(ForgotPasswordRequest) updates) => super.copyWith((message) => updates(message as ForgotPasswordRequest)) as ForgotPasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest create() => ForgotPasswordRequest._();
  ForgotPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ForgotPasswordRequest> createRepeated() => $pb.PbList<ForgotPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotPasswordRequest>(create);
  static ForgotPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get forgotPasswordSecret => $_getSZ(2);
  @$pb.TagNumber(3)
  set forgotPasswordSecret($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasForgotPasswordSecret() => $_has(2);
  @$pb.TagNumber(3)
  void clearForgotPasswordSecret() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get aesSecret => $_getSZ(3);
  @$pb.TagNumber(4)
  set aesSecret($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAesSecret() => $_has(3);
  @$pb.TagNumber(4)
  void clearAesSecret() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get forgotPasswordExpirationMinutes => $_getN(4);
  @$pb.TagNumber(5)
  set forgotPasswordExpirationMinutes($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasForgotPasswordExpirationMinutes() => $_has(4);
  @$pb.TagNumber(5)
  void clearForgotPasswordExpirationMinutes() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get issuer => $_getSZ(5);
  @$pb.TagNumber(6)
  set issuer($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIssuer() => $_has(5);
  @$pb.TagNumber(6)
  void clearIssuer() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get audience => $_getSZ(6);
  @$pb.TagNumber(7)
  set audience($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAudience() => $_has(6);
  @$pb.TagNumber(7)
  void clearAudience() => clearField(7);
}

class ForgotPasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForgotPasswordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccessToken', protoName: 'AccessToken')
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..hasRequiredFields = false
  ;

  ForgotPasswordResponse._() : super();
  factory ForgotPasswordResponse({
    $core.String? accessToken,
    $1.ErrorModel? error,
    $core.String? response,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (error != null) {
      _result.error = error;
    }
    if (response != null) {
      _result.response = response;
    }
    return _result;
  }
  factory ForgotPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForgotPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForgotPasswordResponse clone() => ForgotPasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForgotPasswordResponse copyWith(void Function(ForgotPasswordResponse) updates) => super.copyWith((message) => updates(message as ForgotPasswordResponse)) as ForgotPasswordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordResponse create() => ForgotPasswordResponse._();
  ForgotPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<ForgotPasswordResponse> createRepeated() => $pb.PbList<ForgotPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotPasswordResponse>(create);
  static ForgotPasswordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $1.ErrorModel get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($1.ErrorModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $1.ErrorModel ensureError() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get response => $_getSZ(2);
  @$pb.TagNumber(3)
  set response($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponse() => clearField(3);
}

class ResetPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetPasswordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', protoName: 'Token')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', protoName: 'Id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PasswordHash', protoName: 'PasswordHash')
    ..hasRequiredFields = false
  ;

  ResetPasswordRequest._() : super();
  factory ResetPasswordRequest({
    $core.String? token,
    $core.String? id,
    $core.String? passwordHash,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (id != null) {
      _result.id = id;
    }
    if (passwordHash != null) {
      _result.passwordHash = passwordHash;
    }
    return _result;
  }
  factory ResetPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetPasswordRequest clone() => ResetPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetPasswordRequest copyWith(void Function(ResetPasswordRequest) updates) => super.copyWith((message) => updates(message as ResetPasswordRequest)) as ResetPasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest create() => ResetPasswordRequest._();
  ResetPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordRequest> createRepeated() => $pb.PbList<ResetPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordRequest>(create);
  static ResetPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get passwordHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set passwordHash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPasswordHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearPasswordHash() => clearField(3);
}

class ResetPasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetPasswordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'authentication'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ResetPasswordResponse._() : super();
  factory ResetPasswordResponse({
    $core.String? response,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory ResetPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetPasswordResponse clone() => ResetPasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetPasswordResponse copyWith(void Function(ResetPasswordResponse) updates) => super.copyWith((message) => updates(message as ResetPasswordResponse)) as ResetPasswordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetPasswordResponse create() => ResetPasswordResponse._();
  ResetPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordResponse> createRepeated() => $pb.PbList<ResetPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordResponse>(create);
  static ResetPasswordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $1.ErrorModel get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($1.ErrorModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $1.ErrorModel ensureError() => $_ensure(1);
}

