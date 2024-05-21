///
//  Generated code. Do not modify.
//  source: accounts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'user.pb.dart' as $0;
import 'unit.pb.dart' as $4;

import 'utility.pbenum.dart' as $1;

class AccountsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'accounts'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AccountsResponse._() : super();
  factory AccountsResponse({
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
  factory AccountsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountsResponse clone() => AccountsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountsResponse copyWith(void Function(AccountsResponse) updates) => super.copyWith((message) => updates(message as AccountsResponse)) as AccountsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountsResponse create() => AccountsResponse._();
  AccountsResponse createEmptyInstance() => create();
  static $pb.PbList<AccountsResponse> createRepeated() => $pb.PbList<AccountsResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountsResponse>(create);
  static AccountsResponse? _defaultInstance;

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

class AccountsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'accounts'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountsId', protoName: 'AccountsId')
    ..aOM<$0.UserRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $0.UserRequest.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeeTitle', protoName: 'FeeTitle')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Fees', $pb.PbFieldType.OD, protoName: 'Fees')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.PaymentStatusModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PaymentStatus', $pb.PbFieldType.OE, protoName: 'PaymentStatus', defaultOrMaker: $1.PaymentStatusModel.Nill, valueOf: $1.PaymentStatusModel.valueOf, enumValues: $1.PaymentStatusModel.values)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CreatedByUserId', protoName: 'CreatedByUserId')
    ..pc<$0.UserRequest>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UsersList', $pb.PbFieldType.PM, protoName: 'UsersList', subBuilder: $0.UserRequest.create)
    ..e<$1.BillModel>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PaymentFor', $pb.PbFieldType.OE, protoName: 'PaymentFor', defaultOrMaker: $1.BillModel.BillNill, valueOf: $1.BillModel.valueOf, enumValues: $1.BillModel.values)
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitId', protoName: 'UnitId')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Repeat', protoName: 'Repeat')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SendDate', protoName: 'SendDate')
    ..aOB(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsClose', protoName: 'IsClose')
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VerifiedByAdmin', protoName: 'VerifiedByAdmin')
    ..e<$1.PaymentByModel>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PaymentBy', $pb.PbFieldType.OE, protoName: 'PaymentBy', defaultOrMaker: $1.PaymentByModel.NillPaymentBy, valueOf: $1.PaymentByModel.valueOf, enumValues: $1.PaymentByModel.values)
    ..a<$core.List<$core.int>>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PaymentProof', $pb.PbFieldType.OY, protoName: 'PaymentProof')
    ..e<$1.AdminpaymentStatusModel>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AdminpaymentStatus', $pb.PbFieldType.OE, protoName: 'AdminpaymentStatus', defaultOrMaker: $1.AdminpaymentStatusModel.NillAdminpaymentStatusModel, valueOf: $1.AdminpaymentStatusModel.valueOf, enumValues: $1.AdminpaymentStatusModel.values)
    ..hasRequiredFields = false
  ;

  AccountsRequest._() : super();
  factory AccountsRequest({
    $core.String? accountsId,
    $0.UserRequest? user,
    $core.String? feeTitle,
    $core.double? fees,
    $core.String? description,
    $1.PaymentStatusModel? paymentStatus,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.String? residenceId,
    $core.String? createdByUserId,
    $core.Iterable<$0.UserRequest>? usersList,
    $1.BillModel? paymentFor,
    $core.String? unitId,
    $core.String? repeat,
    $core.String? sendDate,
    $core.bool? isClose,
    $core.bool? verifiedByAdmin,
    $1.PaymentByModel? paymentBy,
    $core.List<$core.int>? paymentProof,
    $1.AdminpaymentStatusModel? adminpaymentStatus,
  }) {
    final _result = create();
    if (accountsId != null) {
      _result.accountsId = accountsId;
    }
    if (user != null) {
      _result.user = user;
    }
    if (feeTitle != null) {
      _result.feeTitle = feeTitle;
    }
    if (fees != null) {
      _result.fees = fees;
    }
    if (description != null) {
      _result.description = description;
    }
    if (paymentStatus != null) {
      _result.paymentStatus = paymentStatus;
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
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (createdByUserId != null) {
      _result.createdByUserId = createdByUserId;
    }
    if (usersList != null) {
      _result.usersList.addAll(usersList);
    }
    if (paymentFor != null) {
      _result.paymentFor = paymentFor;
    }
    if (unitId != null) {
      _result.unitId = unitId;
    }
    if (repeat != null) {
      _result.repeat = repeat;
    }
    if (sendDate != null) {
      _result.sendDate = sendDate;
    }
    if (isClose != null) {
      _result.isClose = isClose;
    }
    if (verifiedByAdmin != null) {
      _result.verifiedByAdmin = verifiedByAdmin;
    }
    if (paymentBy != null) {
      _result.paymentBy = paymentBy;
    }
    if (paymentProof != null) {
      _result.paymentProof = paymentProof;
    }
    if (adminpaymentStatus != null) {
      _result.adminpaymentStatus = adminpaymentStatus;
    }
    return _result;
  }
  factory AccountsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountsRequest clone() => AccountsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountsRequest copyWith(void Function(AccountsRequest) updates) => super.copyWith((message) => updates(message as AccountsRequest)) as AccountsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountsRequest create() => AccountsRequest._();
  AccountsRequest createEmptyInstance() => create();
  static $pb.PbList<AccountsRequest> createRepeated() => $pb.PbList<AccountsRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountsRequest>(create);
  static AccountsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountsId() => clearField(1);

  @$pb.TagNumber(2)
  $0.UserRequest get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($0.UserRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  $0.UserRequest ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get feeTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set feeTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeeTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get fees => $_getN(3);
  @$pb.TagNumber(4)
  set fees($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFees() => $_has(3);
  @$pb.TagNumber(4)
  void clearFees() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $1.PaymentStatusModel get paymentStatus => $_getN(5);
  @$pb.TagNumber(6)
  set paymentStatus($1.PaymentStatusModel v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPaymentStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearPaymentStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get dateCreated => $_getSZ(6);
  @$pb.TagNumber(7)
  set dateCreated($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDateCreated() => $_has(6);
  @$pb.TagNumber(7)
  void clearDateCreated() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dateModified => $_getSZ(7);
  @$pb.TagNumber(8)
  set dateModified($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDateModified() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateModified() => clearField(8);

  @$pb.TagNumber(9)
  $1.ErrorModel get error => $_getN(8);
  @$pb.TagNumber(9)
  set error($1.ErrorModel v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasError() => $_has(8);
  @$pb.TagNumber(9)
  void clearError() => clearField(9);
  @$pb.TagNumber(9)
  $1.ErrorModel ensureError() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get residenceId => $_getSZ(9);
  @$pb.TagNumber(10)
  set residenceId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasResidenceId() => $_has(9);
  @$pb.TagNumber(10)
  void clearResidenceId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get createdByUserId => $_getSZ(10);
  @$pb.TagNumber(11)
  set createdByUserId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedByUserId() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedByUserId() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$0.UserRequest> get usersList => $_getList(11);

  @$pb.TagNumber(13)
  $1.BillModel get paymentFor => $_getN(12);
  @$pb.TagNumber(13)
  set paymentFor($1.BillModel v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasPaymentFor() => $_has(12);
  @$pb.TagNumber(13)
  void clearPaymentFor() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get unitId => $_getSZ(13);
  @$pb.TagNumber(14)
  set unitId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUnitId() => $_has(13);
  @$pb.TagNumber(14)
  void clearUnitId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get repeat => $_getSZ(14);
  @$pb.TagNumber(15)
  set repeat($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasRepeat() => $_has(14);
  @$pb.TagNumber(15)
  void clearRepeat() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get sendDate => $_getSZ(15);
  @$pb.TagNumber(16)
  set sendDate($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSendDate() => $_has(15);
  @$pb.TagNumber(16)
  void clearSendDate() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get isClose => $_getBF(16);
  @$pb.TagNumber(17)
  set isClose($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasIsClose() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsClose() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get verifiedByAdmin => $_getBF(17);
  @$pb.TagNumber(18)
  set verifiedByAdmin($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasVerifiedByAdmin() => $_has(17);
  @$pb.TagNumber(18)
  void clearVerifiedByAdmin() => clearField(18);

  @$pb.TagNumber(19)
  $1.PaymentByModel get paymentBy => $_getN(18);
  @$pb.TagNumber(19)
  set paymentBy($1.PaymentByModel v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasPaymentBy() => $_has(18);
  @$pb.TagNumber(19)
  void clearPaymentBy() => clearField(19);

  @$pb.TagNumber(20)
  $core.List<$core.int> get paymentProof => $_getN(19);
  @$pb.TagNumber(20)
  set paymentProof($core.List<$core.int> v) { $_setBytes(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasPaymentProof() => $_has(19);
  @$pb.TagNumber(20)
  void clearPaymentProof() => clearField(20);

  @$pb.TagNumber(21)
  $1.AdminpaymentStatusModel get adminpaymentStatus => $_getN(20);
  @$pb.TagNumber(21)
  set adminpaymentStatus($1.AdminpaymentStatusModel v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasAdminpaymentStatus() => $_has(20);
  @$pb.TagNumber(21)
  void clearAdminpaymentStatus() => clearField(21);
}

class UnitAccountsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitAccountsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'accounts'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitId', protoName: 'UnitId')
    ..hasRequiredFields = false
  ;

  UnitAccountsRequest._() : super();
  factory UnitAccountsRequest({
    $core.String? unitId,
  }) {
    final _result = create();
    if (unitId != null) {
      _result.unitId = unitId;
    }
    return _result;
  }
  factory UnitAccountsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitAccountsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitAccountsRequest clone() => UnitAccountsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitAccountsRequest copyWith(void Function(UnitAccountsRequest) updates) => super.copyWith((message) => updates(message as UnitAccountsRequest)) as UnitAccountsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitAccountsRequest create() => UnitAccountsRequest._();
  UnitAccountsRequest createEmptyInstance() => create();
  static $pb.PbList<UnitAccountsRequest> createRepeated() => $pb.PbList<UnitAccountsRequest>();
  @$core.pragma('dart2js:noInline')
  static UnitAccountsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitAccountsRequest>(create);
  static UnitAccountsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unitId => $_getSZ(0);
  @$pb.TagNumber(1)
  set unitId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnitId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnitId() => clearField(1);
}

class UnitAccountsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitAccountsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'accounts'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MaintainPending', protoName: 'MaintainPending')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RenovationDeposite', protoName: 'RenovationDeposite')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Renovationrefund', protoName: 'Renovationrefund')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PenantyPending', protoName: 'PenantyPending')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilitiesDeposite', protoName: 'FacilitiesDeposite')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilitiesUsagePending', protoName: 'FacilitiesUsagePending')
    ..pc<AccountsRequest>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MaintainItems', $pb.PbFieldType.PM, protoName: 'MaintainItems', subBuilder: AccountsRequest.create)
    ..pc<AccountsRequest>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RenovationItems', $pb.PbFieldType.PM, protoName: 'RenovationItems', subBuilder: AccountsRequest.create)
    ..pc<AccountsRequest>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PenantyItems', $pb.PbFieldType.PM, protoName: 'PenantyItems', subBuilder: AccountsRequest.create)
    ..pc<AccountsRequest>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilitiesItems', $pb.PbFieldType.PM, protoName: 'FacilitiesItems', subBuilder: AccountsRequest.create)
    ..aOM<$4.OwnerTenantIfo>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OwnerTenantIfo', protoName: 'OwnerTenantIfo', subBuilder: $4.OwnerTenantIfo.create)
    ..aOM<$4.UnitRequest>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitIfo', protoName: 'UnitIfo', subBuilder: $4.UnitRequest.create)
    ..aOM<$1.ErrorModel>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UnitAccountsResponse._() : super();
  factory UnitAccountsResponse({
    $core.String? maintainPending,
    $core.String? renovationDeposite,
    $core.String? renovationrefund,
    $core.String? penantyPending,
    $core.String? facilitiesDeposite,
    $core.String? facilitiesUsagePending,
    $core.Iterable<AccountsRequest>? maintainItems,
    $core.Iterable<AccountsRequest>? renovationItems,
    $core.Iterable<AccountsRequest>? penantyItems,
    $core.Iterable<AccountsRequest>? facilitiesItems,
    $4.OwnerTenantIfo? ownerTenantIfo,
    $4.UnitRequest? unitIfo,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (maintainPending != null) {
      _result.maintainPending = maintainPending;
    }
    if (renovationDeposite != null) {
      _result.renovationDeposite = renovationDeposite;
    }
    if (renovationrefund != null) {
      _result.renovationrefund = renovationrefund;
    }
    if (penantyPending != null) {
      _result.penantyPending = penantyPending;
    }
    if (facilitiesDeposite != null) {
      _result.facilitiesDeposite = facilitiesDeposite;
    }
    if (facilitiesUsagePending != null) {
      _result.facilitiesUsagePending = facilitiesUsagePending;
    }
    if (maintainItems != null) {
      _result.maintainItems.addAll(maintainItems);
    }
    if (renovationItems != null) {
      _result.renovationItems.addAll(renovationItems);
    }
    if (penantyItems != null) {
      _result.penantyItems.addAll(penantyItems);
    }
    if (facilitiesItems != null) {
      _result.facilitiesItems.addAll(facilitiesItems);
    }
    if (ownerTenantIfo != null) {
      _result.ownerTenantIfo = ownerTenantIfo;
    }
    if (unitIfo != null) {
      _result.unitIfo = unitIfo;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UnitAccountsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitAccountsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitAccountsResponse clone() => UnitAccountsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitAccountsResponse copyWith(void Function(UnitAccountsResponse) updates) => super.copyWith((message) => updates(message as UnitAccountsResponse)) as UnitAccountsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitAccountsResponse create() => UnitAccountsResponse._();
  UnitAccountsResponse createEmptyInstance() => create();
  static $pb.PbList<UnitAccountsResponse> createRepeated() => $pb.PbList<UnitAccountsResponse>();
  @$core.pragma('dart2js:noInline')
  static UnitAccountsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitAccountsResponse>(create);
  static UnitAccountsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get maintainPending => $_getSZ(0);
  @$pb.TagNumber(1)
  set maintainPending($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaintainPending() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaintainPending() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get renovationDeposite => $_getSZ(1);
  @$pb.TagNumber(2)
  set renovationDeposite($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRenovationDeposite() => $_has(1);
  @$pb.TagNumber(2)
  void clearRenovationDeposite() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get renovationrefund => $_getSZ(2);
  @$pb.TagNumber(3)
  set renovationrefund($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRenovationrefund() => $_has(2);
  @$pb.TagNumber(3)
  void clearRenovationrefund() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get penantyPending => $_getSZ(3);
  @$pb.TagNumber(4)
  set penantyPending($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPenantyPending() => $_has(3);
  @$pb.TagNumber(4)
  void clearPenantyPending() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get facilitiesDeposite => $_getSZ(4);
  @$pb.TagNumber(5)
  set facilitiesDeposite($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFacilitiesDeposite() => $_has(4);
  @$pb.TagNumber(5)
  void clearFacilitiesDeposite() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get facilitiesUsagePending => $_getSZ(5);
  @$pb.TagNumber(6)
  set facilitiesUsagePending($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFacilitiesUsagePending() => $_has(5);
  @$pb.TagNumber(6)
  void clearFacilitiesUsagePending() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<AccountsRequest> get maintainItems => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<AccountsRequest> get renovationItems => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<AccountsRequest> get penantyItems => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<AccountsRequest> get facilitiesItems => $_getList(9);

  @$pb.TagNumber(11)
  $4.OwnerTenantIfo get ownerTenantIfo => $_getN(10);
  @$pb.TagNumber(11)
  set ownerTenantIfo($4.OwnerTenantIfo v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasOwnerTenantIfo() => $_has(10);
  @$pb.TagNumber(11)
  void clearOwnerTenantIfo() => clearField(11);
  @$pb.TagNumber(11)
  $4.OwnerTenantIfo ensureOwnerTenantIfo() => $_ensure(10);

  @$pb.TagNumber(12)
  $4.UnitRequest get unitIfo => $_getN(11);
  @$pb.TagNumber(12)
  set unitIfo($4.UnitRequest v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasUnitIfo() => $_has(11);
  @$pb.TagNumber(12)
  void clearUnitIfo() => clearField(12);
  @$pb.TagNumber(12)
  $4.UnitRequest ensureUnitIfo() => $_ensure(11);

  @$pb.TagNumber(13)
  $1.ErrorModel get error => $_getN(12);
  @$pb.TagNumber(13)
  set error($1.ErrorModel v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasError() => $_has(12);
  @$pb.TagNumber(13)
  void clearError() => clearField(13);
  @$pb.TagNumber(13)
  $1.ErrorModel ensureError() => $_ensure(12);
}

class AccountsLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountsLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'accounts'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountsId', protoName: 'AccountsId')
    ..hasRequiredFields = false
  ;

  AccountsLookupModel._() : super();
  factory AccountsLookupModel({
    $core.String? accountsId,
  }) {
    final _result = create();
    if (accountsId != null) {
      _result.accountsId = accountsId;
    }
    return _result;
  }
  factory AccountsLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountsLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountsLookupModel clone() => AccountsLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountsLookupModel copyWith(void Function(AccountsLookupModel) updates) => super.copyWith((message) => updates(message as AccountsLookupModel)) as AccountsLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountsLookupModel create() => AccountsLookupModel._();
  AccountsLookupModel createEmptyInstance() => create();
  static $pb.PbList<AccountsLookupModel> createRepeated() => $pb.PbList<AccountsLookupModel>();
  @$core.pragma('dart2js:noInline')
  static AccountsLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountsLookupModel>(create);
  static AccountsLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountsId() => clearField(1);
}

class ResidenceAccountsLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceAccountsLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'accounts'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User')
    ..e<$1.PaymentStatusModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PaymentStatus', $pb.PbFieldType.OE, protoName: 'PaymentStatus', defaultOrMaker: $1.PaymentStatusModel.Nill, valueOf: $1.PaymentStatusModel.valueOf, enumValues: $1.PaymentStatusModel.values)
    ..e<$1.BillModel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PaymentFor', $pb.PbFieldType.OE, protoName: 'PaymentFor', defaultOrMaker: $1.BillModel.BillNill, valueOf: $1.BillModel.valueOf, enumValues: $1.BillModel.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..hasRequiredFields = false
  ;

  ResidenceAccountsLookupModel._() : super();
  factory ResidenceAccountsLookupModel({
    $core.String? residenceId,
    $core.String? user,
    $1.PaymentStatusModel? paymentStatus,
    $1.BillModel? paymentFor,
    $core.String? dateCreated,
    $core.String? dateModified,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (user != null) {
      _result.user = user;
    }
    if (paymentStatus != null) {
      _result.paymentStatus = paymentStatus;
    }
    if (paymentFor != null) {
      _result.paymentFor = paymentFor;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    if (dateModified != null) {
      _result.dateModified = dateModified;
    }
    return _result;
  }
  factory ResidenceAccountsLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceAccountsLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceAccountsLookupModel clone() => ResidenceAccountsLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceAccountsLookupModel copyWith(void Function(ResidenceAccountsLookupModel) updates) => super.copyWith((message) => updates(message as ResidenceAccountsLookupModel)) as ResidenceAccountsLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceAccountsLookupModel create() => ResidenceAccountsLookupModel._();
  ResidenceAccountsLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResidenceAccountsLookupModel> createRepeated() => $pb.PbList<ResidenceAccountsLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResidenceAccountsLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceAccountsLookupModel>(create);
  static ResidenceAccountsLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(3)
  $1.PaymentStatusModel get paymentStatus => $_getN(2);
  @$pb.TagNumber(3)
  set paymentStatus($1.PaymentStatusModel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaymentStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaymentStatus() => clearField(3);

  @$pb.TagNumber(4)
  $1.BillModel get paymentFor => $_getN(3);
  @$pb.TagNumber(4)
  set paymentFor($1.BillModel v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaymentFor() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaymentFor() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get dateCreated => $_getSZ(4);
  @$pb.TagNumber(5)
  set dateCreated($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDateCreated() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateCreated() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get dateModified => $_getSZ(5);
  @$pb.TagNumber(6)
  set dateModified($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDateModified() => $_has(5);
  @$pb.TagNumber(6)
  void clearDateModified() => clearField(6);
}

class AccountsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'accounts'), createEmptyInstance: create)
    ..pc<AccountsRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: AccountsRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AccountsList._() : super();
  factory AccountsList({
    $core.Iterable<AccountsRequest>? items,
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
  factory AccountsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountsList clone() => AccountsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountsList copyWith(void Function(AccountsList) updates) => super.copyWith((message) => updates(message as AccountsList)) as AccountsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountsList create() => AccountsList._();
  AccountsList createEmptyInstance() => create();
  static $pb.PbList<AccountsList> createRepeated() => $pb.PbList<AccountsList>();
  @$core.pragma('dart2js:noInline')
  static AccountsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountsList>(create);
  static AccountsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AccountsRequest> get items => $_getList(0);

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

