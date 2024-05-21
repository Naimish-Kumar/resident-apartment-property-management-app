///
//  Generated code. Do not modify.
//  source: facilitybooking.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'user.pb.dart' as $0;
import 'facility.pb.dart' as $2;
import 'slot.pb.dart' as $4;

import 'utility.pbenum.dart' as $1;

class FacilityBookingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FacilityBookingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'facilitybooking'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  FacilityBookingResponse._() : super();
  factory FacilityBookingResponse({
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
  factory FacilityBookingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FacilityBookingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FacilityBookingResponse clone() => FacilityBookingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FacilityBookingResponse copyWith(void Function(FacilityBookingResponse) updates) => super.copyWith((message) => updates(message as FacilityBookingResponse)) as FacilityBookingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FacilityBookingResponse create() => FacilityBookingResponse._();
  FacilityBookingResponse createEmptyInstance() => create();
  static $pb.PbList<FacilityBookingResponse> createRepeated() => $pb.PbList<FacilityBookingResponse>();
  @$core.pragma('dart2js:noInline')
  static FacilityBookingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FacilityBookingResponse>(create);
  static FacilityBookingResponse? _defaultInstance;

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

class FacilityBookingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FacilityBookingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'facilitybooking'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilityBookingId', protoName: 'FacilityBookingId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilityId', protoName: 'FacilityId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Date', protoName: 'Date')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Remark', protoName: 'Remark')
    ..e<$1.StatusModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOM<$0.UserRequest>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $0.UserRequest.create)
    ..aOM<$2.FacilityRequest>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Facility', protoName: 'Facility', subBuilder: $2.FacilityRequest.create)
    ..aOM<$4.SlotRequest>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Slot', protoName: 'Slot', subBuilder: $4.SlotRequest.create)
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SlotId', protoName: 'SlotId')
    ..hasRequiredFields = false
  ;

  FacilityBookingRequest._() : super();
  factory FacilityBookingRequest({
    $core.String? facilityBookingId,
    $core.String? userId,
    $core.String? residenceId,
    $core.String? facilityId,
    $core.String? date,
    $core.String? remark,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $0.UserRequest? user,
    $2.FacilityRequest? facility,
    $4.SlotRequest? slot,
    $core.String? slotId,
  }) {
    final _result = create();
    if (facilityBookingId != null) {
      _result.facilityBookingId = facilityBookingId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (facilityId != null) {
      _result.facilityId = facilityId;
    }
    if (date != null) {
      _result.date = date;
    }
    if (remark != null) {
      _result.remark = remark;
    }
    if (status != null) {
      _result.status = status;
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
    if (user != null) {
      _result.user = user;
    }
    if (facility != null) {
      _result.facility = facility;
    }
    if (slot != null) {
      _result.slot = slot;
    }
    if (slotId != null) {
      _result.slotId = slotId;
    }
    return _result;
  }
  factory FacilityBookingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FacilityBookingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FacilityBookingRequest clone() => FacilityBookingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FacilityBookingRequest copyWith(void Function(FacilityBookingRequest) updates) => super.copyWith((message) => updates(message as FacilityBookingRequest)) as FacilityBookingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FacilityBookingRequest create() => FacilityBookingRequest._();
  FacilityBookingRequest createEmptyInstance() => create();
  static $pb.PbList<FacilityBookingRequest> createRepeated() => $pb.PbList<FacilityBookingRequest>();
  @$core.pragma('dart2js:noInline')
  static FacilityBookingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FacilityBookingRequest>(create);
  static FacilityBookingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get facilityBookingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set facilityBookingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFacilityBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFacilityBookingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get residenceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set residenceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResidenceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearResidenceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get facilityId => $_getSZ(3);
  @$pb.TagNumber(4)
  set facilityId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFacilityId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFacilityId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get remark => $_getSZ(5);
  @$pb.TagNumber(6)
  set remark($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemark() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemark() => clearField(6);

  @$pb.TagNumber(7)
  $1.StatusModel get status => $_getN(6);
  @$pb.TagNumber(7)
  set status($1.StatusModel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dateCreated => $_getSZ(7);
  @$pb.TagNumber(8)
  set dateCreated($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDateCreated() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateCreated() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get dateModified => $_getSZ(8);
  @$pb.TagNumber(9)
  set dateModified($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDateModified() => $_has(8);
  @$pb.TagNumber(9)
  void clearDateModified() => clearField(9);

  @$pb.TagNumber(10)
  $1.ErrorModel get error => $_getN(9);
  @$pb.TagNumber(10)
  set error($1.ErrorModel v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasError() => $_has(9);
  @$pb.TagNumber(10)
  void clearError() => clearField(10);
  @$pb.TagNumber(10)
  $1.ErrorModel ensureError() => $_ensure(9);

  @$pb.TagNumber(11)
  $0.UserRequest get user => $_getN(10);
  @$pb.TagNumber(11)
  set user($0.UserRequest v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUser() => $_has(10);
  @$pb.TagNumber(11)
  void clearUser() => clearField(11);
  @$pb.TagNumber(11)
  $0.UserRequest ensureUser() => $_ensure(10);

  @$pb.TagNumber(12)
  $2.FacilityRequest get facility => $_getN(11);
  @$pb.TagNumber(12)
  set facility($2.FacilityRequest v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasFacility() => $_has(11);
  @$pb.TagNumber(12)
  void clearFacility() => clearField(12);
  @$pb.TagNumber(12)
  $2.FacilityRequest ensureFacility() => $_ensure(11);

  @$pb.TagNumber(13)
  $4.SlotRequest get slot => $_getN(12);
  @$pb.TagNumber(13)
  set slot($4.SlotRequest v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSlot() => $_has(12);
  @$pb.TagNumber(13)
  void clearSlot() => clearField(13);
  @$pb.TagNumber(13)
  $4.SlotRequest ensureSlot() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.String get slotId => $_getSZ(13);
  @$pb.TagNumber(14)
  set slotId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasSlotId() => $_has(13);
  @$pb.TagNumber(14)
  void clearSlotId() => clearField(14);
}

class FacilityBookingLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FacilityBookingLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'facilitybooking'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilityBookingId', protoName: 'FacilityBookingId')
    ..hasRequiredFields = false
  ;

  FacilityBookingLookupModel._() : super();
  factory FacilityBookingLookupModel({
    $core.String? facilityBookingId,
  }) {
    final _result = create();
    if (facilityBookingId != null) {
      _result.facilityBookingId = facilityBookingId;
    }
    return _result;
  }
  factory FacilityBookingLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FacilityBookingLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FacilityBookingLookupModel clone() => FacilityBookingLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FacilityBookingLookupModel copyWith(void Function(FacilityBookingLookupModel) updates) => super.copyWith((message) => updates(message as FacilityBookingLookupModel)) as FacilityBookingLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FacilityBookingLookupModel create() => FacilityBookingLookupModel._();
  FacilityBookingLookupModel createEmptyInstance() => create();
  static $pb.PbList<FacilityBookingLookupModel> createRepeated() => $pb.PbList<FacilityBookingLookupModel>();
  @$core.pragma('dart2js:noInline')
  static FacilityBookingLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FacilityBookingLookupModel>(create);
  static FacilityBookingLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get facilityBookingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set facilityBookingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFacilityBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFacilityBookingId() => clearField(1);
}

class UserFacilityBookingLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserFacilityBookingLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'facilitybooking'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..hasRequiredFields = false
  ;

  UserFacilityBookingLookupModel._() : super();
  factory UserFacilityBookingLookupModel({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory UserFacilityBookingLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFacilityBookingLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFacilityBookingLookupModel clone() => UserFacilityBookingLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFacilityBookingLookupModel copyWith(void Function(UserFacilityBookingLookupModel) updates) => super.copyWith((message) => updates(message as UserFacilityBookingLookupModel)) as UserFacilityBookingLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserFacilityBookingLookupModel create() => UserFacilityBookingLookupModel._();
  UserFacilityBookingLookupModel createEmptyInstance() => create();
  static $pb.PbList<UserFacilityBookingLookupModel> createRepeated() => $pb.PbList<UserFacilityBookingLookupModel>();
  @$core.pragma('dart2js:noInline')
  static UserFacilityBookingLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFacilityBookingLookupModel>(create);
  static UserFacilityBookingLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class ResidenceFacilityBookingLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceFacilityBookingLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'facilitybooking'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResidenceFacilityBookingLookupModel._() : super();
  factory ResidenceFacilityBookingLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResidenceFacilityBookingLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceFacilityBookingLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceFacilityBookingLookupModel clone() => ResidenceFacilityBookingLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceFacilityBookingLookupModel copyWith(void Function(ResidenceFacilityBookingLookupModel) updates) => super.copyWith((message) => updates(message as ResidenceFacilityBookingLookupModel)) as ResidenceFacilityBookingLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceFacilityBookingLookupModel create() => ResidenceFacilityBookingLookupModel._();
  ResidenceFacilityBookingLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResidenceFacilityBookingLookupModel> createRepeated() => $pb.PbList<ResidenceFacilityBookingLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResidenceFacilityBookingLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceFacilityBookingLookupModel>(create);
  static ResidenceFacilityBookingLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class FacilityBookingsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FacilityBookingsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'facilitybooking'), createEmptyInstance: create)
    ..pc<FacilityBookingRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: FacilityBookingRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  FacilityBookingsList._() : super();
  factory FacilityBookingsList({
    $core.Iterable<FacilityBookingRequest>? items,
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
  factory FacilityBookingsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FacilityBookingsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FacilityBookingsList clone() => FacilityBookingsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FacilityBookingsList copyWith(void Function(FacilityBookingsList) updates) => super.copyWith((message) => updates(message as FacilityBookingsList)) as FacilityBookingsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FacilityBookingsList create() => FacilityBookingsList._();
  FacilityBookingsList createEmptyInstance() => create();
  static $pb.PbList<FacilityBookingsList> createRepeated() => $pb.PbList<FacilityBookingsList>();
  @$core.pragma('dart2js:noInline')
  static FacilityBookingsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FacilityBookingsList>(create);
  static FacilityBookingsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FacilityBookingRequest> get items => $_getList(0);

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

