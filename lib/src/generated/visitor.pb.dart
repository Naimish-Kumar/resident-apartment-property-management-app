///
//  Generated code. Do not modify.
//  source: visitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'unit.pb.dart' as $4;

import 'utility.pbenum.dart' as $1;

class VisitorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VisitorResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'visitor'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  VisitorResponse._() : super();
  factory VisitorResponse({
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
  factory VisitorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VisitorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VisitorResponse clone() => VisitorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VisitorResponse copyWith(void Function(VisitorResponse) updates) => super.copyWith((message) => updates(message as VisitorResponse)) as VisitorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VisitorResponse create() => VisitorResponse._();
  VisitorResponse createEmptyInstance() => create();
  static $pb.PbList<VisitorResponse> createRepeated() => $pb.PbList<VisitorResponse>();
  @$core.pragma('dart2js:noInline')
  static VisitorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VisitorResponse>(create);
  static VisitorResponse? _defaultInstance;

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

class VisitorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VisitorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'visitor'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VisitorId', protoName: 'VisitorId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitId', protoName: 'UnitId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingId', protoName: 'BuildingId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ICNumber', protoName: 'ICNumber')
    ..e<$1.PerpouseOfVisitModel>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PerpouseOfVisit', $pb.PbFieldType.OE, protoName: 'PerpouseOfVisit', defaultOrMaker: $1.PerpouseOfVisitModel.PerpouseOfVisitNull, valueOf: $1.PerpouseOfVisitModel.valueOf, enumValues: $1.PerpouseOfVisitModel.values)
    ..e<$1.VisitByModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VisitBy', $pb.PbFieldType.OE, protoName: 'VisitBy', defaultOrMaker: $1.VisitByModel.VisitByNull, valueOf: $1.VisitByModel.valueOf, enumValues: $1.VisitByModel.values)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VehicleNumber', protoName: 'VehicleNumber')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsPreVisit', protoName: 'IsPreVisit')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ParkingId', protoName: 'ParkingId')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckIn', protoName: 'CheckIn')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckOut', protoName: 'CheckOut')
    ..aOM<$1.ErrorModel>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsCheckIn', protoName: 'IsCheckIn')
    ..aOB(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsCheckOut', protoName: 'IsCheckOut')
    ..a<$core.List<$core.int>>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ICProof', $pb.PbFieldType.OY, protoName: 'ICProof')
    ..aOM<$4.OwnerTenantIfo>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OwnerTenantIfo', protoName: 'OwnerTenantIfo', subBuilder: $4.OwnerTenantIfo.create)
    ..hasRequiredFields = false
  ;

  VisitorRequest._() : super();
  factory VisitorRequest({
    $core.String? visitorId,
    $core.String? residenceId,
    $core.String? unitId,
    $core.String? userId,
    $core.String? buildingId,
    $core.String? name,
    $core.String? iCNumber,
    $1.PerpouseOfVisitModel? perpouseOfVisit,
    $1.VisitByModel? visitBy,
    $core.String? vehicleNumber,
    $core.bool? isPreVisit,
    $core.String? parkingId,
    $core.String? checkIn,
    $core.String? checkOut,
    $1.ErrorModel? error,
    $core.bool? isCheckIn,
    $core.bool? isCheckOut,
    $core.List<$core.int>? iCProof,
    $4.OwnerTenantIfo? ownerTenantIfo,
  }) {
    final _result = create();
    if (visitorId != null) {
      _result.visitorId = visitorId;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (unitId != null) {
      _result.unitId = unitId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (buildingId != null) {
      _result.buildingId = buildingId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (iCNumber != null) {
      _result.iCNumber = iCNumber;
    }
    if (perpouseOfVisit != null) {
      _result.perpouseOfVisit = perpouseOfVisit;
    }
    if (visitBy != null) {
      _result.visitBy = visitBy;
    }
    if (vehicleNumber != null) {
      _result.vehicleNumber = vehicleNumber;
    }
    if (isPreVisit != null) {
      _result.isPreVisit = isPreVisit;
    }
    if (parkingId != null) {
      _result.parkingId = parkingId;
    }
    if (checkIn != null) {
      _result.checkIn = checkIn;
    }
    if (checkOut != null) {
      _result.checkOut = checkOut;
    }
    if (error != null) {
      _result.error = error;
    }
    if (isCheckIn != null) {
      _result.isCheckIn = isCheckIn;
    }
    if (isCheckOut != null) {
      _result.isCheckOut = isCheckOut;
    }
    if (iCProof != null) {
      _result.iCProof = iCProof;
    }
    if (ownerTenantIfo != null) {
      _result.ownerTenantIfo = ownerTenantIfo;
    }
    return _result;
  }
  factory VisitorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VisitorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VisitorRequest clone() => VisitorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VisitorRequest copyWith(void Function(VisitorRequest) updates) => super.copyWith((message) => updates(message as VisitorRequest)) as VisitorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VisitorRequest create() => VisitorRequest._();
  VisitorRequest createEmptyInstance() => create();
  static $pb.PbList<VisitorRequest> createRepeated() => $pb.PbList<VisitorRequest>();
  @$core.pragma('dart2js:noInline')
  static VisitorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VisitorRequest>(create);
  static VisitorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get visitorId => $_getSZ(0);
  @$pb.TagNumber(1)
  set visitorId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVisitorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVisitorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get residenceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set residenceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResidenceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearResidenceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get unitId => $_getSZ(2);
  @$pb.TagNumber(3)
  set unitId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnitId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnitId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get buildingId => $_getSZ(4);
  @$pb.TagNumber(5)
  set buildingId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBuildingId() => $_has(4);
  @$pb.TagNumber(5)
  void clearBuildingId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get iCNumber => $_getSZ(6);
  @$pb.TagNumber(7)
  set iCNumber($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasICNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearICNumber() => clearField(7);

  @$pb.TagNumber(8)
  $1.PerpouseOfVisitModel get perpouseOfVisit => $_getN(7);
  @$pb.TagNumber(8)
  set perpouseOfVisit($1.PerpouseOfVisitModel v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPerpouseOfVisit() => $_has(7);
  @$pb.TagNumber(8)
  void clearPerpouseOfVisit() => clearField(8);

  @$pb.TagNumber(9)
  $1.VisitByModel get visitBy => $_getN(8);
  @$pb.TagNumber(9)
  set visitBy($1.VisitByModel v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasVisitBy() => $_has(8);
  @$pb.TagNumber(9)
  void clearVisitBy() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get vehicleNumber => $_getSZ(9);
  @$pb.TagNumber(10)
  set vehicleNumber($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasVehicleNumber() => $_has(9);
  @$pb.TagNumber(10)
  void clearVehicleNumber() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isPreVisit => $_getBF(10);
  @$pb.TagNumber(11)
  set isPreVisit($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsPreVisit() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsPreVisit() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get parkingId => $_getSZ(11);
  @$pb.TagNumber(12)
  set parkingId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasParkingId() => $_has(11);
  @$pb.TagNumber(12)
  void clearParkingId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get checkIn => $_getSZ(12);
  @$pb.TagNumber(13)
  set checkIn($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCheckIn() => $_has(12);
  @$pb.TagNumber(13)
  void clearCheckIn() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get checkOut => $_getSZ(13);
  @$pb.TagNumber(14)
  set checkOut($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCheckOut() => $_has(13);
  @$pb.TagNumber(14)
  void clearCheckOut() => clearField(14);

  @$pb.TagNumber(15)
  $1.ErrorModel get error => $_getN(14);
  @$pb.TagNumber(15)
  set error($1.ErrorModel v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasError() => $_has(14);
  @$pb.TagNumber(15)
  void clearError() => clearField(15);
  @$pb.TagNumber(15)
  $1.ErrorModel ensureError() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.bool get isCheckIn => $_getBF(15);
  @$pb.TagNumber(16)
  set isCheckIn($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasIsCheckIn() => $_has(15);
  @$pb.TagNumber(16)
  void clearIsCheckIn() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get isCheckOut => $_getBF(16);
  @$pb.TagNumber(17)
  set isCheckOut($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasIsCheckOut() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsCheckOut() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.int> get iCProof => $_getN(17);
  @$pb.TagNumber(18)
  set iCProof($core.List<$core.int> v) { $_setBytes(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasICProof() => $_has(17);
  @$pb.TagNumber(18)
  void clearICProof() => clearField(18);

  @$pb.TagNumber(19)
  $4.OwnerTenantIfo get ownerTenantIfo => $_getN(18);
  @$pb.TagNumber(19)
  set ownerTenantIfo($4.OwnerTenantIfo v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasOwnerTenantIfo() => $_has(18);
  @$pb.TagNumber(19)
  void clearOwnerTenantIfo() => clearField(19);
  @$pb.TagNumber(19)
  $4.OwnerTenantIfo ensureOwnerTenantIfo() => $_ensure(18);
}

class VisitorLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VisitorLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'visitor'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VisitorId', protoName: 'VisitorId')
    ..hasRequiredFields = false
  ;

  VisitorLookupModel._() : super();
  factory VisitorLookupModel({
    $core.String? visitorId,
  }) {
    final _result = create();
    if (visitorId != null) {
      _result.visitorId = visitorId;
    }
    return _result;
  }
  factory VisitorLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VisitorLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VisitorLookupModel clone() => VisitorLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VisitorLookupModel copyWith(void Function(VisitorLookupModel) updates) => super.copyWith((message) => updates(message as VisitorLookupModel)) as VisitorLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VisitorLookupModel create() => VisitorLookupModel._();
  VisitorLookupModel createEmptyInstance() => create();
  static $pb.PbList<VisitorLookupModel> createRepeated() => $pb.PbList<VisitorLookupModel>();
  @$core.pragma('dart2js:noInline')
  static VisitorLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VisitorLookupModel>(create);
  static VisitorLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get visitorId => $_getSZ(0);
  @$pb.TagNumber(1)
  set visitorId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVisitorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVisitorId() => clearField(1);
}

class ResidenceVisitorLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceVisitorLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'visitor'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResidenceVisitorLookupModel._() : super();
  factory ResidenceVisitorLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResidenceVisitorLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceVisitorLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceVisitorLookupModel clone() => ResidenceVisitorLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceVisitorLookupModel copyWith(void Function(ResidenceVisitorLookupModel) updates) => super.copyWith((message) => updates(message as ResidenceVisitorLookupModel)) as ResidenceVisitorLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceVisitorLookupModel create() => ResidenceVisitorLookupModel._();
  ResidenceVisitorLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResidenceVisitorLookupModel> createRepeated() => $pb.PbList<ResidenceVisitorLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResidenceVisitorLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceVisitorLookupModel>(create);
  static ResidenceVisitorLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class VisitorsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VisitorsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'visitor'), createEmptyInstance: create)
    ..pc<VisitorRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: VisitorRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  VisitorsList._() : super();
  factory VisitorsList({
    $core.Iterable<VisitorRequest>? items,
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
  factory VisitorsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VisitorsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VisitorsList clone() => VisitorsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VisitorsList copyWith(void Function(VisitorsList) updates) => super.copyWith((message) => updates(message as VisitorsList)) as VisitorsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VisitorsList create() => VisitorsList._();
  VisitorsList createEmptyInstance() => create();
  static $pb.PbList<VisitorsList> createRepeated() => $pb.PbList<VisitorsList>();
  @$core.pragma('dart2js:noInline')
  static VisitorsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VisitorsList>(create);
  static VisitorsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VisitorRequest> get items => $_getList(0);

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

