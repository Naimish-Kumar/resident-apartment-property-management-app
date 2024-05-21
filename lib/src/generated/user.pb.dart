///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

import 'utility.pbenum.dart' as $1;

class UserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UserResponse._() : super();
  factory UserResponse({
    $core.String? response,
    $core.bool? isOk,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    if (isOk != null) {
      _result.isOk = isOk;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserResponse clone() => UserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserResponse copyWith(void Function(UserResponse) updates) => super.copyWith((message) => updates(message as UserResponse)) as UserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserResponse create() => UserResponse._();
  UserResponse createEmptyInstance() => create();
  static $pb.PbList<UserResponse> createRepeated() => $pb.PbList<UserResponse>();
  @$core.pragma('dart2js:noInline')
  static UserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserResponse>(create);
  static UserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isOk => $_getBF(1);
  @$pb.TagNumber(2)
  set isOk($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsOk() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsOk() => clearField(2);

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

class UserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FirstName', protoName: 'FirstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastName', protoName: 'LastName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DOB', protoName: 'DOB')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RegisteredHostName', protoName: 'RegisteredHostName')
    ..e<$1.GenderModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Gender', $pb.PbFieldType.OE, protoName: 'Gender', defaultOrMaker: $1.GenderModel.GNull, valueOf: $1.GenderModel.valueOf, enumValues: $1.GenderModel.values)
    ..e<$1.StatusModel>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..pc<$1.AccountRoleModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Role', $pb.PbFieldType.KE, protoName: 'Role', valueOf: $1.AccountRoleModel.valueOf, enumValues: $1.AccountRoleModel.values, defaultEnumValue: $1.AccountRoleModel.ARNull)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Occupation', protoName: 'Occupation')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NRIC', protoName: 'NRIC')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Passport', protoName: 'Passport')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PhoneNumber', protoName: 'PhoneNumber')
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ProfilePicture', $pb.PbFieldType.OY, protoName: 'ProfilePicture')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CreatedBy', protoName: 'CreatedBy')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BankName', protoName: 'BankName')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountNumber', protoName: 'AccountNumber')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountHolderName', protoName: 'AccountHolderName')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RegisteredIP', protoName: 'RegisteredIP')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastLoginIP', protoName: 'LastLoginIP')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastLogin', protoName: 'LastLogin')
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsPasswordFormat', $pb.PbFieldType.O3, protoName: 'IsPasswordFormat')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastPasswordUpdated', protoName: 'LastPasswordUpdated')
    ..aOB(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Terms', protoName: 'Terms')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..e<$1.NationalityModel>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Nationality', $pb.PbFieldType.OE, protoName: 'Nationality', defaultOrMaker: $1.NationalityModel.NNull, valueOf: $1.NationalityModel.valueOf, enumValues: $1.NationalityModel.values)
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ModifiedBy', protoName: 'ModifiedBy')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ModifiedIP', protoName: 'ModifiedIP')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ModifiedHostName', protoName: 'ModifiedHostName')
    ..a<$core.int>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ModifiedCount', $pb.PbFieldType.O3, protoName: 'ModifiedCount')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceName', protoName: 'ResidenceName')
    ..aOS(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ParkingLotNo', protoName: 'ParkingLotNo')
    ..hasRequiredFields = false
  ;

  UserRequest._() : super();
  factory UserRequest({
    $core.String? userId,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? dOB,
    $core.String? email,
    $core.String? registeredHostName,
    $1.GenderModel? gender,
    $1.StatusModel? status,
    $core.Iterable<$1.AccountRoleModel>? role,
    $core.String? occupation,
    $core.String? nRIC,
    $core.String? passport,
    $core.String? phoneNumber,
    $core.List<$core.int>? profilePicture,
    $core.String? createdBy,
    $core.String? bankName,
    $core.String? accountNumber,
    $core.String? accountHolderName,
    $core.String? registeredIP,
    $core.String? lastLoginIP,
    $core.String? lastLogin,
    $core.int? isPasswordFormat,
    $core.String? lastPasswordUpdated,
    $core.bool? terms,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $1.NationalityModel? nationality,
    $core.String? modifiedBy,
    $core.String? modifiedIP,
    $core.String? modifiedHostName,
    $core.int? modifiedCount,
    $core.String? residenceId,
    $core.String? residenceName,
    $core.String? parkingLotNo,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (dOB != null) {
      _result.dOB = dOB;
    }
    if (email != null) {
      _result.email = email;
    }
    if (registeredHostName != null) {
      _result.registeredHostName = registeredHostName;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (status != null) {
      _result.status = status;
    }
    if (role != null) {
      _result.role.addAll(role);
    }
    if (occupation != null) {
      _result.occupation = occupation;
    }
    if (nRIC != null) {
      _result.nRIC = nRIC;
    }
    if (passport != null) {
      _result.passport = passport;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (profilePicture != null) {
      _result.profilePicture = profilePicture;
    }
    if (createdBy != null) {
      _result.createdBy = createdBy;
    }
    if (bankName != null) {
      _result.bankName = bankName;
    }
    if (accountNumber != null) {
      _result.accountNumber = accountNumber;
    }
    if (accountHolderName != null) {
      _result.accountHolderName = accountHolderName;
    }
    if (registeredIP != null) {
      _result.registeredIP = registeredIP;
    }
    if (lastLoginIP != null) {
      _result.lastLoginIP = lastLoginIP;
    }
    if (lastLogin != null) {
      _result.lastLogin = lastLogin;
    }
    if (isPasswordFormat != null) {
      _result.isPasswordFormat = isPasswordFormat;
    }
    if (lastPasswordUpdated != null) {
      _result.lastPasswordUpdated = lastPasswordUpdated;
    }
    if (terms != null) {
      _result.terms = terms;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    if (dateModified != null) {
      _result.dateModified = dateModified;
    }
    if (error != null) {
      _result.error = error;
    }
    if (nationality != null) {
      _result.nationality = nationality;
    }
    if (modifiedBy != null) {
      _result.modifiedBy = modifiedBy;
    }
    if (modifiedIP != null) {
      _result.modifiedIP = modifiedIP;
    }
    if (modifiedHostName != null) {
      _result.modifiedHostName = modifiedHostName;
    }
    if (modifiedCount != null) {
      _result.modifiedCount = modifiedCount;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (residenceName != null) {
      _result.residenceName = residenceName;
    }
    if (parkingLotNo != null) {
      _result.parkingLotNo = parkingLotNo;
    }
    return _result;
  }
  factory UserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRequest clone() => UserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRequest copyWith(void Function(UserRequest) updates) => super.copyWith((message) => updates(message as UserRequest)) as UserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRequest create() => UserRequest._();
  UserRequest createEmptyInstance() => create();
  static $pb.PbList<UserRequest> createRepeated() => $pb.PbList<UserRequest>();
  @$core.pragma('dart2js:noInline')
  static UserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRequest>(create);
  static UserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get dOB => $_getSZ(3);
  @$pb.TagNumber(4)
  set dOB($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDOB() => $_has(3);
  @$pb.TagNumber(4)
  void clearDOB() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get registeredHostName => $_getSZ(5);
  @$pb.TagNumber(6)
  set registeredHostName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRegisteredHostName() => $_has(5);
  @$pb.TagNumber(6)
  void clearRegisteredHostName() => clearField(6);

  @$pb.TagNumber(7)
  $1.GenderModel get gender => $_getN(6);
  @$pb.TagNumber(7)
  set gender($1.GenderModel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasGender() => $_has(6);
  @$pb.TagNumber(7)
  void clearGender() => clearField(7);

  @$pb.TagNumber(8)
  $1.StatusModel get status => $_getN(7);
  @$pb.TagNumber(8)
  set status($1.StatusModel v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$1.AccountRoleModel> get role => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get occupation => $_getSZ(9);
  @$pb.TagNumber(10)
  set occupation($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOccupation() => $_has(9);
  @$pb.TagNumber(10)
  void clearOccupation() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get nRIC => $_getSZ(10);
  @$pb.TagNumber(11)
  set nRIC($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNRIC() => $_has(10);
  @$pb.TagNumber(11)
  void clearNRIC() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get passport => $_getSZ(11);
  @$pb.TagNumber(12)
  set passport($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPassport() => $_has(11);
  @$pb.TagNumber(12)
  void clearPassport() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get phoneNumber => $_getSZ(12);
  @$pb.TagNumber(13)
  set phoneNumber($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPhoneNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearPhoneNumber() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get profilePicture => $_getN(13);
  @$pb.TagNumber(14)
  set profilePicture($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasProfilePicture() => $_has(13);
  @$pb.TagNumber(14)
  void clearProfilePicture() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get createdBy => $_getSZ(14);
  @$pb.TagNumber(15)
  set createdBy($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCreatedBy() => $_has(14);
  @$pb.TagNumber(15)
  void clearCreatedBy() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get bankName => $_getSZ(15);
  @$pb.TagNumber(16)
  set bankName($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasBankName() => $_has(15);
  @$pb.TagNumber(16)
  void clearBankName() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get accountNumber => $_getSZ(16);
  @$pb.TagNumber(17)
  set accountNumber($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasAccountNumber() => $_has(16);
  @$pb.TagNumber(17)
  void clearAccountNumber() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get accountHolderName => $_getSZ(17);
  @$pb.TagNumber(18)
  set accountHolderName($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasAccountHolderName() => $_has(17);
  @$pb.TagNumber(18)
  void clearAccountHolderName() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get registeredIP => $_getSZ(18);
  @$pb.TagNumber(19)
  set registeredIP($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasRegisteredIP() => $_has(18);
  @$pb.TagNumber(19)
  void clearRegisteredIP() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get lastLoginIP => $_getSZ(19);
  @$pb.TagNumber(20)
  set lastLoginIP($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasLastLoginIP() => $_has(19);
  @$pb.TagNumber(20)
  void clearLastLoginIP() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get lastLogin => $_getSZ(20);
  @$pb.TagNumber(21)
  set lastLogin($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasLastLogin() => $_has(20);
  @$pb.TagNumber(21)
  void clearLastLogin() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get isPasswordFormat => $_getIZ(21);
  @$pb.TagNumber(22)
  set isPasswordFormat($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasIsPasswordFormat() => $_has(21);
  @$pb.TagNumber(22)
  void clearIsPasswordFormat() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get lastPasswordUpdated => $_getSZ(22);
  @$pb.TagNumber(23)
  set lastPasswordUpdated($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasLastPasswordUpdated() => $_has(22);
  @$pb.TagNumber(23)
  void clearLastPasswordUpdated() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get terms => $_getBF(23);
  @$pb.TagNumber(24)
  set terms($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasTerms() => $_has(23);
  @$pb.TagNumber(24)
  void clearTerms() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get dateCreated => $_getSZ(24);
  @$pb.TagNumber(25)
  set dateCreated($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasDateCreated() => $_has(24);
  @$pb.TagNumber(25)
  void clearDateCreated() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get dateModified => $_getSZ(25);
  @$pb.TagNumber(26)
  set dateModified($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasDateModified() => $_has(25);
  @$pb.TagNumber(26)
  void clearDateModified() => clearField(26);

  @$pb.TagNumber(27)
  $1.ErrorModel get error => $_getN(26);
  @$pb.TagNumber(27)
  set error($1.ErrorModel v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasError() => $_has(26);
  @$pb.TagNumber(27)
  void clearError() => clearField(27);
  @$pb.TagNumber(27)
  $1.ErrorModel ensureError() => $_ensure(26);

  @$pb.TagNumber(28)
  $1.NationalityModel get nationality => $_getN(27);
  @$pb.TagNumber(28)
  set nationality($1.NationalityModel v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasNationality() => $_has(27);
  @$pb.TagNumber(28)
  void clearNationality() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get modifiedBy => $_getSZ(28);
  @$pb.TagNumber(29)
  set modifiedBy($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasModifiedBy() => $_has(28);
  @$pb.TagNumber(29)
  void clearModifiedBy() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get modifiedIP => $_getSZ(29);
  @$pb.TagNumber(30)
  set modifiedIP($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasModifiedIP() => $_has(29);
  @$pb.TagNumber(30)
  void clearModifiedIP() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get modifiedHostName => $_getSZ(30);
  @$pb.TagNumber(31)
  set modifiedHostName($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasModifiedHostName() => $_has(30);
  @$pb.TagNumber(31)
  void clearModifiedHostName() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get modifiedCount => $_getIZ(31);
  @$pb.TagNumber(32)
  set modifiedCount($core.int v) { $_setSignedInt32(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasModifiedCount() => $_has(31);
  @$pb.TagNumber(32)
  void clearModifiedCount() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get residenceId => $_getSZ(32);
  @$pb.TagNumber(33)
  set residenceId($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasResidenceId() => $_has(32);
  @$pb.TagNumber(33)
  void clearResidenceId() => clearField(33);

  @$pb.TagNumber(34)
  $core.String get residenceName => $_getSZ(33);
  @$pb.TagNumber(34)
  set residenceName($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasResidenceName() => $_has(33);
  @$pb.TagNumber(34)
  void clearResidenceName() => clearField(34);

  @$pb.TagNumber(35)
  $core.String get parkingLotNo => $_getSZ(34);
  @$pb.TagNumber(35)
  set parkingLotNo($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasParkingLotNo() => $_has(34);
  @$pb.TagNumber(35)
  void clearParkingLotNo() => clearField(35);
}

class UserLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..hasRequiredFields = false
  ;

  UserLookupModel._() : super();
  factory UserLookupModel({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory UserLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLookupModel clone() => UserLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLookupModel copyWith(void Function(UserLookupModel) updates) => super.copyWith((message) => updates(message as UserLookupModel)) as UserLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserLookupModel create() => UserLookupModel._();
  UserLookupModel createEmptyInstance() => create();
  static $pb.PbList<UserLookupModel> createRepeated() => $pb.PbList<UserLookupModel>();
  @$core.pragma('dart2js:noInline')
  static UserLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLookupModel>(create);
  static UserLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class ResidenceUserLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceUserLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResidenceUserLookupModel._() : super();
  factory ResidenceUserLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResidenceUserLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceUserLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceUserLookupModel clone() => ResidenceUserLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceUserLookupModel copyWith(void Function(ResidenceUserLookupModel) updates) => super.copyWith((message) => updates(message as ResidenceUserLookupModel)) as ResidenceUserLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceUserLookupModel create() => ResidenceUserLookupModel._();
  ResidenceUserLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResidenceUserLookupModel> createRepeated() => $pb.PbList<ResidenceUserLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResidenceUserLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceUserLookupModel>(create);
  static ResidenceUserLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class UsersList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UsersList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..pc<UserRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: UserRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UsersList._() : super();
  factory UsersList({
    $core.Iterable<UserRequest>? items,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UsersList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UsersList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UsersList clone() => UsersList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UsersList copyWith(void Function(UsersList) updates) => super.copyWith((message) => updates(message as UsersList)) as UsersList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UsersList create() => UsersList._();
  UsersList createEmptyInstance() => create();
  static $pb.PbList<UsersList> createRepeated() => $pb.PbList<UsersList>();
  @$core.pragma('dart2js:noInline')
  static UsersList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsersList>(create);
  static UsersList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserRequest> get items => $_getList(0);

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

