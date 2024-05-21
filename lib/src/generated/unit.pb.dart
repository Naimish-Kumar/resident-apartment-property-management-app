///
//  Generated code. Do not modify.
//  source: unit.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $3;
import 'utility.pb.dart' as $1;
import 'building.pb.dart' as $2;

import 'utility.pbenum.dart' as $1;

class OwnerTenantIfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OwnerTenantIfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOM<$3.UserRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Owner', protoName: 'Owner', subBuilder: $3.UserRequest.create)
    ..aOM<$3.UserRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tenant', protoName: 'Tenant', subBuilder: $3.UserRequest.create)
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  OwnerTenantIfo._() : super();
  factory OwnerTenantIfo({
    $3.UserRequest? owner,
    $3.UserRequest? tenant,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (owner != null) {
      _result.owner = owner;
    }
    if (tenant != null) {
      _result.tenant = tenant;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory OwnerTenantIfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OwnerTenantIfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OwnerTenantIfo clone() => OwnerTenantIfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OwnerTenantIfo copyWith(void Function(OwnerTenantIfo) updates) => super.copyWith((message) => updates(message as OwnerTenantIfo)) as OwnerTenantIfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OwnerTenantIfo create() => OwnerTenantIfo._();
  OwnerTenantIfo createEmptyInstance() => create();
  static $pb.PbList<OwnerTenantIfo> createRepeated() => $pb.PbList<OwnerTenantIfo>();
  @$core.pragma('dart2js:noInline')
  static OwnerTenantIfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OwnerTenantIfo>(create);
  static OwnerTenantIfo? _defaultInstance;

  @$pb.TagNumber(1)
  $3.UserRequest get owner => $_getN(0);
  @$pb.TagNumber(1)
  set owner($3.UserRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwner() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwner() => clearField(1);
  @$pb.TagNumber(1)
  $3.UserRequest ensureOwner() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.UserRequest get tenant => $_getN(1);
  @$pb.TagNumber(2)
  set tenant($3.UserRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTenant() => $_has(1);
  @$pb.TagNumber(2)
  void clearTenant() => clearField(2);
  @$pb.TagNumber(2)
  $3.UserRequest ensureTenant() => $_ensure(1);

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

class UnitResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UnitResponse._() : super();
  factory UnitResponse({
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
  factory UnitResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitResponse clone() => UnitResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitResponse copyWith(void Function(UnitResponse) updates) => super.copyWith((message) => updates(message as UnitResponse)) as UnitResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitResponse create() => UnitResponse._();
  UnitResponse createEmptyInstance() => create();
  static $pb.PbList<UnitResponse> createRepeated() => $pb.PbList<UnitResponse>();
  @$core.pragma('dart2js:noInline')
  static UnitResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitResponse>(create);
  static UnitResponse? _defaultInstance;

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

class UnitLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitId', protoName: 'UnitId')
    ..hasRequiredFields = false
  ;

  UnitLookupModel._() : super();
  factory UnitLookupModel({
    $core.String? unitId,
  }) {
    final _result = create();
    if (unitId != null) {
      _result.unitId = unitId;
    }
    return _result;
  }
  factory UnitLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitLookupModel clone() => UnitLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitLookupModel copyWith(void Function(UnitLookupModel) updates) => super.copyWith((message) => updates(message as UnitLookupModel)) as UnitLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitLookupModel create() => UnitLookupModel._();
  UnitLookupModel createEmptyInstance() => create();
  static $pb.PbList<UnitLookupModel> createRepeated() => $pb.PbList<UnitLookupModel>();
  @$core.pragma('dart2js:noInline')
  static UnitLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitLookupModel>(create);
  static UnitLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unitId => $_getSZ(0);
  @$pb.TagNumber(1)
  set unitId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnitId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnitId() => clearField(1);
}

class ResidentUnitListOwnerLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidentUnitListOwnerLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidentId', protoName: 'ResidentId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..hasRequiredFields = false
  ;

  ResidentUnitListOwnerLookupModel._() : super();
  factory ResidentUnitListOwnerLookupModel({
    $core.String? residentId,
    $core.String? userId,
  }) {
    final _result = create();
    if (residentId != null) {
      _result.residentId = residentId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory ResidentUnitListOwnerLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidentUnitListOwnerLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidentUnitListOwnerLookupModel clone() => ResidentUnitListOwnerLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidentUnitListOwnerLookupModel copyWith(void Function(ResidentUnitListOwnerLookupModel) updates) => super.copyWith((message) => updates(message as ResidentUnitListOwnerLookupModel)) as ResidentUnitListOwnerLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidentUnitListOwnerLookupModel create() => ResidentUnitListOwnerLookupModel._();
  ResidentUnitListOwnerLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResidentUnitListOwnerLookupModel> createRepeated() => $pb.PbList<ResidentUnitListOwnerLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResidentUnitListOwnerLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidentUnitListOwnerLookupModel>(create);
  static ResidentUnitListOwnerLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidentId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class UnitListLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitListLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingId', protoName: 'BuildingId')
    ..hasRequiredFields = false
  ;

  UnitListLookupModel._() : super();
  factory UnitListLookupModel({
    $core.String? buildingId,
  }) {
    final _result = create();
    if (buildingId != null) {
      _result.buildingId = buildingId;
    }
    return _result;
  }
  factory UnitListLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitListLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitListLookupModel clone() => UnitListLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitListLookupModel copyWith(void Function(UnitListLookupModel) updates) => super.copyWith((message) => updates(message as UnitListLookupModel)) as UnitListLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitListLookupModel create() => UnitListLookupModel._();
  UnitListLookupModel createEmptyInstance() => create();
  static $pb.PbList<UnitListLookupModel> createRepeated() => $pb.PbList<UnitListLookupModel>();
  @$core.pragma('dart2js:noInline')
  static UnitListLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitListLookupModel>(create);
  static UnitListLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get buildingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set buildingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBuildingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBuildingId() => clearField(1);
}

class ResidentUnitListLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidentUnitListLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidentId', protoName: 'ResidentId')
    ..hasRequiredFields = false
  ;

  ResidentUnitListLookupModel._() : super();
  factory ResidentUnitListLookupModel({
    $core.String? residentId,
  }) {
    final _result = create();
    if (residentId != null) {
      _result.residentId = residentId;
    }
    return _result;
  }
  factory ResidentUnitListLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidentUnitListLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidentUnitListLookupModel clone() => ResidentUnitListLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidentUnitListLookupModel copyWith(void Function(ResidentUnitListLookupModel) updates) => super.copyWith((message) => updates(message as ResidentUnitListLookupModel)) as ResidentUnitListLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidentUnitListLookupModel create() => ResidentUnitListLookupModel._();
  ResidentUnitListLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResidentUnitListLookupModel> createRepeated() => $pb.PbList<ResidentUnitListLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResidentUnitListLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidentUnitListLookupModel>(create);
  static ResidentUnitListLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidentId() => clearField(1);
}

class UnitDocLookUpModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitDocLookUpModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitDocId', protoName: 'UnitDocId')
    ..hasRequiredFields = false
  ;

  UnitDocLookUpModel._() : super();
  factory UnitDocLookUpModel({
    $core.String? unitDocId,
  }) {
    final _result = create();
    if (unitDocId != null) {
      _result.unitDocId = unitDocId;
    }
    return _result;
  }
  factory UnitDocLookUpModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitDocLookUpModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitDocLookUpModel clone() => UnitDocLookUpModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitDocLookUpModel copyWith(void Function(UnitDocLookUpModel) updates) => super.copyWith((message) => updates(message as UnitDocLookUpModel)) as UnitDocLookUpModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitDocLookUpModel create() => UnitDocLookUpModel._();
  UnitDocLookUpModel createEmptyInstance() => create();
  static $pb.PbList<UnitDocLookUpModel> createRepeated() => $pb.PbList<UnitDocLookUpModel>();
  @$core.pragma('dart2js:noInline')
  static UnitDocLookUpModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitDocLookUpModel>(create);
  static UnitDocLookUpModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unitDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set unitDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnitDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnitDocId() => clearField(1);
}

class UnitRequestList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitRequestList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..pc<UnitRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: UnitRequest.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingId', protoName: 'BuildingId')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UnitRequestList._() : super();
  factory UnitRequestList({
    $core.Iterable<UnitRequest>? items,
    $core.String? buildingId,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    if (buildingId != null) {
      _result.buildingId = buildingId;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UnitRequestList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitRequestList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitRequestList clone() => UnitRequestList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitRequestList copyWith(void Function(UnitRequestList) updates) => super.copyWith((message) => updates(message as UnitRequestList)) as UnitRequestList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitRequestList create() => UnitRequestList._();
  UnitRequestList createEmptyInstance() => create();
  static $pb.PbList<UnitRequestList> createRepeated() => $pb.PbList<UnitRequestList>();
  @$core.pragma('dart2js:noInline')
  static UnitRequestList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitRequestList>(create);
  static UnitRequestList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UnitRequest> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get buildingId => $_getSZ(1);
  @$pb.TagNumber(2)
  set buildingId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuildingId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildingId() => clearField(2);

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

class UnitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitId', protoName: 'UnitId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitPrefix', protoName: 'UnitPrefix')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitFloorNumber', protoName: 'UnitFloorNumber')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitNumber', protoName: 'UnitNumber')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsPrimary', protoName: 'IsPrimary')
    ..e<$1.UnitRoleModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitRole', $pb.PbFieldType.OE, protoName: 'UnitRole', defaultOrMaker: $1.UnitRoleModel.URNull, valueOf: $1.UnitRoleModel.valueOf, enumValues: $1.UnitRoleModel.values)
    ..e<$1.UnitFurnishTypeModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitFurnishType', $pb.PbFieldType.OE, protoName: 'UnitFurnishType', defaultOrMaker: $1.UnitFurnishTypeModel.UFTNull, valueOf: $1.UnitFurnishTypeModel.valueOf, enumValues: $1.UnitFurnishTypeModel.values)
    ..e<$1.UnitTypeModel>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitType', $pb.PbFieldType.OE, protoName: 'UnitType', defaultOrMaker: $1.UnitTypeModel.UTNull, valueOf: $1.UnitTypeModel.valueOf, enumValues: $1.UnitTypeModel.values)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LeaseFrom', protoName: 'LeaseFrom')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LeaseTo', protoName: 'LeaseTo')
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitPrice', $pb.PbFieldType.OD, protoName: 'UnitPrice')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NumberOfBedRoom', $pb.PbFieldType.O3, protoName: 'NumberOfBedRoom')
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NumberOfBathroom', $pb.PbFieldType.O3, protoName: 'NumberOfBathroom')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.UnitStatusModel>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitStatus', $pb.PbFieldType.OE, protoName: 'UnitStatus', defaultOrMaker: $1.UnitStatusModel.USNull, valueOf: $1.UnitStatusModel.valueOf, enumValues: $1.UnitStatusModel.values)
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitSoldDate', protoName: 'UnitSoldDate')
    ..aOM<$2.BuildingRequest>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Building', protoName: 'Building', subBuilder: $2.BuildingRequest.create)
    ..aOM<$3.UserRequest>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $3.UserRequest.create)
    ..pc<UnitDocModel>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitDocs', $pb.PbFieldType.PM, protoName: 'UnitDocs', subBuilder: UnitDocModel.create)
    ..aOM<TenantRequest>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tenant', protoName: 'Tenant', subBuilder: TenantRequest.create)
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingId', protoName: 'BuildingId')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOM<$1.ErrorModel>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UnitRequest._() : super();
  factory UnitRequest({
    $core.String? unitId,
    $core.String? unitPrefix,
    $core.String? unitFloorNumber,
    $core.String? unitNumber,
    $core.bool? isPrimary,
    $1.UnitRoleModel? unitRole,
    $1.UnitFurnishTypeModel? unitFurnishType,
    $1.UnitTypeModel? unitType,
    $core.String? leaseFrom,
    $core.String? leaseTo,
    $core.double? unitPrice,
    $core.int? numberOfBedRoom,
    $core.int? numberOfBathroom,
    $core.String? description,
    $1.UnitStatusModel? unitStatus,
    $core.String? unitSoldDate,
    $2.BuildingRequest? building,
    $3.UserRequest? user,
    $core.Iterable<UnitDocModel>? unitDocs,
    TenantRequest? tenant,
    $core.String? dateCreated,
    $core.String? dateModified,
    $core.String? buildingId,
    $core.String? userId,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (unitId != null) {
      _result.unitId = unitId;
    }
    if (unitPrefix != null) {
      _result.unitPrefix = unitPrefix;
    }
    if (unitFloorNumber != null) {
      _result.unitFloorNumber = unitFloorNumber;
    }
    if (unitNumber != null) {
      _result.unitNumber = unitNumber;
    }
    if (isPrimary != null) {
      _result.isPrimary = isPrimary;
    }
    if (unitRole != null) {
      _result.unitRole = unitRole;
    }
    if (unitFurnishType != null) {
      _result.unitFurnishType = unitFurnishType;
    }
    if (unitType != null) {
      _result.unitType = unitType;
    }
    if (leaseFrom != null) {
      _result.leaseFrom = leaseFrom;
    }
    if (leaseTo != null) {
      _result.leaseTo = leaseTo;
    }
    if (unitPrice != null) {
      _result.unitPrice = unitPrice;
    }
    if (numberOfBedRoom != null) {
      _result.numberOfBedRoom = numberOfBedRoom;
    }
    if (numberOfBathroom != null) {
      _result.numberOfBathroom = numberOfBathroom;
    }
    if (description != null) {
      _result.description = description;
    }
    if (unitStatus != null) {
      _result.unitStatus = unitStatus;
    }
    if (unitSoldDate != null) {
      _result.unitSoldDate = unitSoldDate;
    }
    if (building != null) {
      _result.building = building;
    }
    if (user != null) {
      _result.user = user;
    }
    if (unitDocs != null) {
      _result.unitDocs.addAll(unitDocs);
    }
    if (tenant != null) {
      _result.tenant = tenant;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    if (dateModified != null) {
      _result.dateModified = dateModified;
    }
    if (buildingId != null) {
      _result.buildingId = buildingId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UnitRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitRequest clone() => UnitRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitRequest copyWith(void Function(UnitRequest) updates) => super.copyWith((message) => updates(message as UnitRequest)) as UnitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitRequest create() => UnitRequest._();
  UnitRequest createEmptyInstance() => create();
  static $pb.PbList<UnitRequest> createRepeated() => $pb.PbList<UnitRequest>();
  @$core.pragma('dart2js:noInline')
  static UnitRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitRequest>(create);
  static UnitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unitId => $_getSZ(0);
  @$pb.TagNumber(1)
  set unitId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnitId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnitId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get unitPrefix => $_getSZ(1);
  @$pb.TagNumber(2)
  set unitPrefix($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnitPrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnitPrefix() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get unitFloorNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set unitFloorNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnitFloorNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnitFloorNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get unitNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set unitNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnitNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnitNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isPrimary => $_getBF(4);
  @$pb.TagNumber(5)
  set isPrimary($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsPrimary() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsPrimary() => clearField(5);

  @$pb.TagNumber(6)
  $1.UnitRoleModel get unitRole => $_getN(5);
  @$pb.TagNumber(6)
  set unitRole($1.UnitRoleModel v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnitRole() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnitRole() => clearField(6);

  @$pb.TagNumber(7)
  $1.UnitFurnishTypeModel get unitFurnishType => $_getN(6);
  @$pb.TagNumber(7)
  set unitFurnishType($1.UnitFurnishTypeModel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUnitFurnishType() => $_has(6);
  @$pb.TagNumber(7)
  void clearUnitFurnishType() => clearField(7);

  @$pb.TagNumber(8)
  $1.UnitTypeModel get unitType => $_getN(7);
  @$pb.TagNumber(8)
  set unitType($1.UnitTypeModel v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUnitType() => $_has(7);
  @$pb.TagNumber(8)
  void clearUnitType() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get leaseFrom => $_getSZ(8);
  @$pb.TagNumber(9)
  set leaseFrom($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLeaseFrom() => $_has(8);
  @$pb.TagNumber(9)
  void clearLeaseFrom() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get leaseTo => $_getSZ(9);
  @$pb.TagNumber(10)
  set leaseTo($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLeaseTo() => $_has(9);
  @$pb.TagNumber(10)
  void clearLeaseTo() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get unitPrice => $_getN(10);
  @$pb.TagNumber(11)
  set unitPrice($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUnitPrice() => $_has(10);
  @$pb.TagNumber(11)
  void clearUnitPrice() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get numberOfBedRoom => $_getIZ(11);
  @$pb.TagNumber(12)
  set numberOfBedRoom($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNumberOfBedRoom() => $_has(11);
  @$pb.TagNumber(12)
  void clearNumberOfBedRoom() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get numberOfBathroom => $_getIZ(12);
  @$pb.TagNumber(13)
  set numberOfBathroom($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasNumberOfBathroom() => $_has(12);
  @$pb.TagNumber(13)
  void clearNumberOfBathroom() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get description => $_getSZ(13);
  @$pb.TagNumber(14)
  set description($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDescription() => $_has(13);
  @$pb.TagNumber(14)
  void clearDescription() => clearField(14);

  @$pb.TagNumber(15)
  $1.UnitStatusModel get unitStatus => $_getN(14);
  @$pb.TagNumber(15)
  set unitStatus($1.UnitStatusModel v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasUnitStatus() => $_has(14);
  @$pb.TagNumber(15)
  void clearUnitStatus() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get unitSoldDate => $_getSZ(15);
  @$pb.TagNumber(16)
  set unitSoldDate($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasUnitSoldDate() => $_has(15);
  @$pb.TagNumber(16)
  void clearUnitSoldDate() => clearField(16);

  @$pb.TagNumber(17)
  $2.BuildingRequest get building => $_getN(16);
  @$pb.TagNumber(17)
  set building($2.BuildingRequest v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasBuilding() => $_has(16);
  @$pb.TagNumber(17)
  void clearBuilding() => clearField(17);
  @$pb.TagNumber(17)
  $2.BuildingRequest ensureBuilding() => $_ensure(16);

  @$pb.TagNumber(18)
  $3.UserRequest get user => $_getN(17);
  @$pb.TagNumber(18)
  set user($3.UserRequest v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasUser() => $_has(17);
  @$pb.TagNumber(18)
  void clearUser() => clearField(18);
  @$pb.TagNumber(18)
  $3.UserRequest ensureUser() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.List<UnitDocModel> get unitDocs => $_getList(18);

  @$pb.TagNumber(20)
  TenantRequest get tenant => $_getN(19);
  @$pb.TagNumber(20)
  set tenant(TenantRequest v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasTenant() => $_has(19);
  @$pb.TagNumber(20)
  void clearTenant() => clearField(20);
  @$pb.TagNumber(20)
  TenantRequest ensureTenant() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.String get dateCreated => $_getSZ(20);
  @$pb.TagNumber(21)
  set dateCreated($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasDateCreated() => $_has(20);
  @$pb.TagNumber(21)
  void clearDateCreated() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get dateModified => $_getSZ(21);
  @$pb.TagNumber(22)
  set dateModified($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasDateModified() => $_has(21);
  @$pb.TagNumber(22)
  void clearDateModified() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get buildingId => $_getSZ(22);
  @$pb.TagNumber(23)
  set buildingId($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasBuildingId() => $_has(22);
  @$pb.TagNumber(23)
  void clearBuildingId() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get userId => $_getSZ(23);
  @$pb.TagNumber(24)
  set userId($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasUserId() => $_has(23);
  @$pb.TagNumber(24)
  void clearUserId() => clearField(24);

  @$pb.TagNumber(25)
  $1.ErrorModel get error => $_getN(24);
  @$pb.TagNumber(25)
  set error($1.ErrorModel v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasError() => $_has(24);
  @$pb.TagNumber(25)
  void clearError() => clearField(25);
  @$pb.TagNumber(25)
  $1.ErrorModel ensureError() => $_ensure(24);
}

class TenantRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TenantRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AddTenantId', protoName: 'AddTenantId')
    ..aOM<UnitRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Unit', protoName: 'Unit', subBuilder: UnitRequest.create)
    ..aOM<$3.UserRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $3.UserRequest.create)
    ..e<$1.UnitRoleModel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitRole', $pb.PbFieldType.OE, protoName: 'UnitRole', defaultOrMaker: $1.UnitRoleModel.URNull, valueOf: $1.UnitRoleModel.valueOf, enumValues: $1.UnitRoleModel.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TenantStart', protoName: 'TenantStart')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TenantEnd', protoName: 'TenantEnd')
    ..e<$1.StatusModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..hasRequiredFields = false
  ;

  TenantRequest._() : super();
  factory TenantRequest({
    $core.String? addTenantId,
    UnitRequest? unit,
    $3.UserRequest? user,
    $1.UnitRoleModel? unitRole,
    $core.String? tenantStart,
    $core.String? tenantEnd,
    $1.StatusModel? status,
  }) {
    final _result = create();
    if (addTenantId != null) {
      _result.addTenantId = addTenantId;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (user != null) {
      _result.user = user;
    }
    if (unitRole != null) {
      _result.unitRole = unitRole;
    }
    if (tenantStart != null) {
      _result.tenantStart = tenantStart;
    }
    if (tenantEnd != null) {
      _result.tenantEnd = tenantEnd;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory TenantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TenantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TenantRequest clone() => TenantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TenantRequest copyWith(void Function(TenantRequest) updates) => super.copyWith((message) => updates(message as TenantRequest)) as TenantRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TenantRequest create() => TenantRequest._();
  TenantRequest createEmptyInstance() => create();
  static $pb.PbList<TenantRequest> createRepeated() => $pb.PbList<TenantRequest>();
  @$core.pragma('dart2js:noInline')
  static TenantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TenantRequest>(create);
  static TenantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get addTenantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set addTenantId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddTenantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddTenantId() => clearField(1);

  @$pb.TagNumber(2)
  UnitRequest get unit => $_getN(1);
  @$pb.TagNumber(2)
  set unit(UnitRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnit() => clearField(2);
  @$pb.TagNumber(2)
  UnitRequest ensureUnit() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.UserRequest get user => $_getN(2);
  @$pb.TagNumber(3)
  set user($3.UserRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);
  @$pb.TagNumber(3)
  $3.UserRequest ensureUser() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.UnitRoleModel get unitRole => $_getN(3);
  @$pb.TagNumber(4)
  set unitRole($1.UnitRoleModel v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnitRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnitRole() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tenantStart => $_getSZ(4);
  @$pb.TagNumber(5)
  set tenantStart($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTenantStart() => $_has(4);
  @$pb.TagNumber(5)
  void clearTenantStart() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get tenantEnd => $_getSZ(5);
  @$pb.TagNumber(6)
  set tenantEnd($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTenantEnd() => $_has(5);
  @$pb.TagNumber(6)
  void clearTenantEnd() => clearField(6);

  @$pb.TagNumber(7)
  $1.StatusModel get status => $_getN(6);
  @$pb.TagNumber(7)
  set status($1.StatusModel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);
}

class UnitDocModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitDocModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitDocId', protoName: 'UnitDocId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', $pb.PbFieldType.OY, protoName: 'File')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..aOM<UnitRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Unit', protoName: 'Unit', subBuilder: UnitRequest.create)
    ..aOM<$1.ErrorModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UnitDocModel._() : super();
  factory UnitDocModel({
    $core.String? unitDocId,
    $core.List<$core.int>? file,
    $core.String? fileType,
    $core.String? fileName,
    UnitRequest? unit,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (unitDocId != null) {
      _result.unitDocId = unitDocId;
    }
    if (file != null) {
      _result.file = file;
    }
    if (fileType != null) {
      _result.fileType = fileType;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UnitDocModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitDocModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitDocModel clone() => UnitDocModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitDocModel copyWith(void Function(UnitDocModel) updates) => super.copyWith((message) => updates(message as UnitDocModel)) as UnitDocModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitDocModel create() => UnitDocModel._();
  UnitDocModel createEmptyInstance() => create();
  static $pb.PbList<UnitDocModel> createRepeated() => $pb.PbList<UnitDocModel>();
  @$core.pragma('dart2js:noInline')
  static UnitDocModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitDocModel>(create);
  static UnitDocModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unitDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set unitDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnitDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnitDocId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get file => $_getN(1);
  @$pb.TagNumber(2)
  set file($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileType => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get fileName => $_getSZ(3);
  @$pb.TagNumber(4)
  set fileName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFileName() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileName() => clearField(4);

  @$pb.TagNumber(5)
  UnitRequest get unit => $_getN(4);
  @$pb.TagNumber(5)
  set unit(UnitRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnit() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnit() => clearField(5);
  @$pb.TagNumber(5)
  UnitRequest ensureUnit() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.ErrorModel get error => $_getN(5);
  @$pb.TagNumber(6)
  set error($1.ErrorModel v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(6)
  void clearError() => clearField(6);
  @$pb.TagNumber(6)
  $1.ErrorModel ensureError() => $_ensure(5);
}

class UnitsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'unit'), createEmptyInstance: create)
    ..pc<UnitRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: UnitRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  UnitsList._() : super();
  factory UnitsList({
    $core.Iterable<UnitRequest>? items,
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
  factory UnitsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitsList clone() => UnitsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitsList copyWith(void Function(UnitsList) updates) => super.copyWith((message) => updates(message as UnitsList)) as UnitsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitsList create() => UnitsList._();
  UnitsList createEmptyInstance() => create();
  static $pb.PbList<UnitsList> createRepeated() => $pb.PbList<UnitsList>();
  @$core.pragma('dart2js:noInline')
  static UnitsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitsList>(create);
  static UnitsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UnitRequest> get items => $_getList(0);

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

