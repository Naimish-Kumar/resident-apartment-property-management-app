///
//  Generated code. Do not modify.
//  source: panic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

class PanicResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PanicResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'panic'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  PanicResponse._() : super();
  factory PanicResponse({
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
  factory PanicResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PanicResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PanicResponse clone() => PanicResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PanicResponse copyWith(void Function(PanicResponse) updates) => super.copyWith((message) => updates(message as PanicResponse)) as PanicResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PanicResponse create() => PanicResponse._();
  PanicResponse createEmptyInstance() => create();
  static $pb.PbList<PanicResponse> createRepeated() => $pb.PbList<PanicResponse>();
  @$core.pragma('dart2js:noInline')
  static PanicResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PanicResponse>(create);
  static PanicResponse? _defaultInstance;

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

class PanicRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PanicRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'panic'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PanicId', protoName: 'PanicId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitId', protoName: 'UnitId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Message', protoName: 'Message')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOM<$1.ErrorModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MobileNumber', protoName: 'MobileNumber')
    ..hasRequiredFields = false
  ;

  PanicRequest._() : super();
  factory PanicRequest({
    $core.String? panicId,
    $core.String? unitId,
    $core.String? user,
    $core.String? message,
    $core.String? dateCreated,
    $1.ErrorModel? error,
    $core.String? residenceId,
    $core.String? mobileNumber,
  }) {
    final _result = create();
    if (panicId != null) {
      _result.panicId = panicId;
    }
    if (unitId != null) {
      _result.unitId = unitId;
    }
    if (user != null) {
      _result.user = user;
    }
    if (message != null) {
      _result.message = message;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    if (error != null) {
      _result.error = error;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (mobileNumber != null) {
      _result.mobileNumber = mobileNumber;
    }
    return _result;
  }
  factory PanicRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PanicRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PanicRequest clone() => PanicRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PanicRequest copyWith(void Function(PanicRequest) updates) => super.copyWith((message) => updates(message as PanicRequest)) as PanicRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PanicRequest create() => PanicRequest._();
  PanicRequest createEmptyInstance() => create();
  static $pb.PbList<PanicRequest> createRepeated() => $pb.PbList<PanicRequest>();
  @$core.pragma('dart2js:noInline')
  static PanicRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PanicRequest>(create);
  static PanicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get panicId => $_getSZ(0);
  @$pb.TagNumber(1)
  set panicId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPanicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPanicId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get unitId => $_getSZ(1);
  @$pb.TagNumber(2)
  set unitId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnitId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnitId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get user => $_getSZ(2);
  @$pb.TagNumber(3)
  set user($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get dateCreated => $_getSZ(4);
  @$pb.TagNumber(5)
  set dateCreated($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDateCreated() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateCreated() => clearField(5);

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

  @$pb.TagNumber(7)
  $core.String get residenceId => $_getSZ(6);
  @$pb.TagNumber(7)
  set residenceId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasResidenceId() => $_has(6);
  @$pb.TagNumber(7)
  void clearResidenceId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get mobileNumber => $_getSZ(7);
  @$pb.TagNumber(8)
  set mobileNumber($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMobileNumber() => $_has(7);
  @$pb.TagNumber(8)
  void clearMobileNumber() => clearField(8);
}

class PanicLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PanicLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'panic'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PanicId', protoName: 'PanicId')
    ..hasRequiredFields = false
  ;

  PanicLookupModel._() : super();
  factory PanicLookupModel({
    $core.String? residenceId,
    $core.String? panicId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (panicId != null) {
      _result.panicId = panicId;
    }
    return _result;
  }
  factory PanicLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PanicLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PanicLookupModel clone() => PanicLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PanicLookupModel copyWith(void Function(PanicLookupModel) updates) => super.copyWith((message) => updates(message as PanicLookupModel)) as PanicLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PanicLookupModel create() => PanicLookupModel._();
  PanicLookupModel createEmptyInstance() => create();
  static $pb.PbList<PanicLookupModel> createRepeated() => $pb.PbList<PanicLookupModel>();
  @$core.pragma('dart2js:noInline')
  static PanicLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PanicLookupModel>(create);
  static PanicLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get panicId => $_getSZ(1);
  @$pb.TagNumber(2)
  set panicId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPanicId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPanicId() => clearField(2);
}

class PanicsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PanicsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'panic'), createEmptyInstance: create)
    ..pc<PanicRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: PanicRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  PanicsList._() : super();
  factory PanicsList({
    $core.Iterable<PanicRequest>? items,
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
  factory PanicsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PanicsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PanicsList clone() => PanicsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PanicsList copyWith(void Function(PanicsList) updates) => super.copyWith((message) => updates(message as PanicsList)) as PanicsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PanicsList create() => PanicsList._();
  PanicsList createEmptyInstance() => create();
  static $pb.PbList<PanicsList> createRepeated() => $pb.PbList<PanicsList>();
  @$core.pragma('dart2js:noInline')
  static PanicsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PanicsList>(create);
  static PanicsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PanicRequest> get items => $_getList(0);

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

