///
//  Generated code. Do not modify.
//  source: building.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'residence.pb.dart' as $0;

import 'utility.pbenum.dart' as $1;

class BuildingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuildingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'building'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  BuildingResponse._() : super();
  factory BuildingResponse({
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
  factory BuildingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuildingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuildingResponse clone() => BuildingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuildingResponse copyWith(void Function(BuildingResponse) updates) => super.copyWith((message) => updates(message as BuildingResponse)) as BuildingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildingResponse create() => BuildingResponse._();
  BuildingResponse createEmptyInstance() => create();
  static $pb.PbList<BuildingResponse> createRepeated() => $pb.PbList<BuildingResponse>();
  @$core.pragma('dart2js:noInline')
  static BuildingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuildingResponse>(create);
  static BuildingResponse? _defaultInstance;

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

class BuildingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuildingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'building'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingId', protoName: 'BuildingId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingName', protoName: 'BuildingName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingPrefix', protoName: 'BuildingPrefix')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalFloor', $pb.PbFieldType.O3, protoName: 'TotalFloor')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitPerFloor', $pb.PbFieldType.O3, protoName: 'UnitPerFloor')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.StatusModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOM<$0.ResidenceRequest>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'residence', subBuilder: $0.ResidenceRequest.create)
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsUnitCreated', protoName: 'IsUnitCreated')
    ..hasRequiredFields = false
  ;

  BuildingRequest._() : super();
  factory BuildingRequest({
    $core.String? buildingId,
    $core.String? buildingName,
    $core.String? buildingPrefix,
    $core.int? totalFloor,
    $core.int? unitPerFloor,
    $core.String? description,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $0.ResidenceRequest? residence,
    $core.bool? isUnitCreated,
  }) {
    final _result = create();
    if (buildingId != null) {
      _result.buildingId = buildingId;
    }
    if (buildingName != null) {
      _result.buildingName = buildingName;
    }
    if (buildingPrefix != null) {
      _result.buildingPrefix = buildingPrefix;
    }
    if (totalFloor != null) {
      _result.totalFloor = totalFloor;
    }
    if (unitPerFloor != null) {
      _result.unitPerFloor = unitPerFloor;
    }
    if (description != null) {
      _result.description = description;
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
    if (residence != null) {
      _result.residence = residence;
    }
    if (isUnitCreated != null) {
      _result.isUnitCreated = isUnitCreated;
    }
    return _result;
  }
  factory BuildingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuildingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuildingRequest clone() => BuildingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuildingRequest copyWith(void Function(BuildingRequest) updates) => super.copyWith((message) => updates(message as BuildingRequest)) as BuildingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildingRequest create() => BuildingRequest._();
  BuildingRequest createEmptyInstance() => create();
  static $pb.PbList<BuildingRequest> createRepeated() => $pb.PbList<BuildingRequest>();
  @$core.pragma('dart2js:noInline')
  static BuildingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuildingRequest>(create);
  static BuildingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get buildingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set buildingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBuildingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBuildingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get buildingName => $_getSZ(1);
  @$pb.TagNumber(2)
  set buildingName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuildingName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildingName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get buildingPrefix => $_getSZ(2);
  @$pb.TagNumber(3)
  set buildingPrefix($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBuildingPrefix() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuildingPrefix() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalFloor => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalFloor($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalFloor() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalFloor() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get unitPerFloor => $_getIZ(4);
  @$pb.TagNumber(5)
  set unitPerFloor($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnitPerFloor() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnitPerFloor() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

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
  $0.ResidenceRequest get residence => $_getN(10);
  @$pb.TagNumber(11)
  set residence($0.ResidenceRequest v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasResidence() => $_has(10);
  @$pb.TagNumber(11)
  void clearResidence() => clearField(11);
  @$pb.TagNumber(11)
  $0.ResidenceRequest ensureResidence() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.bool get isUnitCreated => $_getBF(11);
  @$pb.TagNumber(12)
  set isUnitCreated($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsUnitCreated() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsUnitCreated() => clearField(12);
}

class BuildingLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuildingLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'building'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingId', protoName: 'BuildingId')
    ..hasRequiredFields = false
  ;

  BuildingLookupModel._() : super();
  factory BuildingLookupModel({
    $core.String? buildingId,
  }) {
    final _result = create();
    if (buildingId != null) {
      _result.buildingId = buildingId;
    }
    return _result;
  }
  factory BuildingLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuildingLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuildingLookupModel clone() => BuildingLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuildingLookupModel copyWith(void Function(BuildingLookupModel) updates) => super.copyWith((message) => updates(message as BuildingLookupModel)) as BuildingLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildingLookupModel create() => BuildingLookupModel._();
  BuildingLookupModel createEmptyInstance() => create();
  static $pb.PbList<BuildingLookupModel> createRepeated() => $pb.PbList<BuildingLookupModel>();
  @$core.pragma('dart2js:noInline')
  static BuildingLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuildingLookupModel>(create);
  static BuildingLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get buildingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set buildingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBuildingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBuildingId() => clearField(1);
}

class BuildingsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuildingsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'building'), createEmptyInstance: create)
    ..pc<BuildingRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: BuildingRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  BuildingsList._() : super();
  factory BuildingsList({
    $core.Iterable<BuildingRequest>? items,
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
  factory BuildingsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuildingsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuildingsList clone() => BuildingsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuildingsList copyWith(void Function(BuildingsList) updates) => super.copyWith((message) => updates(message as BuildingsList)) as BuildingsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildingsList create() => BuildingsList._();
  BuildingsList createEmptyInstance() => create();
  static $pb.PbList<BuildingsList> createRepeated() => $pb.PbList<BuildingsList>();
  @$core.pragma('dart2js:noInline')
  static BuildingsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuildingsList>(create);
  static BuildingsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BuildingRequest> get items => $_getList(0);

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

