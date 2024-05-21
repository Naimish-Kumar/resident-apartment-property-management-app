///
//  Generated code. Do not modify.
//  source: commitee.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

class CommiteeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommiteeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'commitee'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  CommiteeResponse._() : super();
  factory CommiteeResponse({
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
  factory CommiteeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommiteeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommiteeResponse clone() => CommiteeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommiteeResponse copyWith(void Function(CommiteeResponse) updates) => super.copyWith((message) => updates(message as CommiteeResponse)) as CommiteeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommiteeResponse create() => CommiteeResponse._();
  CommiteeResponse createEmptyInstance() => create();
  static $pb.PbList<CommiteeResponse> createRepeated() => $pb.PbList<CommiteeResponse>();
  @$core.pragma('dart2js:noInline')
  static CommiteeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommiteeResponse>(create);
  static CommiteeResponse? _defaultInstance;

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

class CommiteeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommiteeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'commitee'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CommiteeId', protoName: 'CommiteeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Unit', protoName: 'Unit')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Position', protoName: 'Position')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ContactNumber', protoName: 'ContactNumber')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  CommiteeRequest._() : super();
  factory CommiteeRequest({
    $core.String? commiteeId,
    $core.String? name,
    $core.String? unit,
    $core.String? position,
    $core.String? contactNumber,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.String? residenceId,
  }) {
    final _result = create();
    if (commiteeId != null) {
      _result.commiteeId = commiteeId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (position != null) {
      _result.position = position;
    }
    if (contactNumber != null) {
      _result.contactNumber = contactNumber;
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
    return _result;
  }
  factory CommiteeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommiteeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommiteeRequest clone() => CommiteeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommiteeRequest copyWith(void Function(CommiteeRequest) updates) => super.copyWith((message) => updates(message as CommiteeRequest)) as CommiteeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommiteeRequest create() => CommiteeRequest._();
  CommiteeRequest createEmptyInstance() => create();
  static $pb.PbList<CommiteeRequest> createRepeated() => $pb.PbList<CommiteeRequest>();
  @$core.pragma('dart2js:noInline')
  static CommiteeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommiteeRequest>(create);
  static CommiteeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commiteeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set commiteeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommiteeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommiteeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get unit => $_getSZ(2);
  @$pb.TagNumber(3)
  set unit($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnit() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get position => $_getSZ(3);
  @$pb.TagNumber(4)
  set position($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contactNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set contactNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContactNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearContactNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get dateCreated => $_getSZ(5);
  @$pb.TagNumber(6)
  set dateCreated($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDateCreated() => $_has(5);
  @$pb.TagNumber(6)
  void clearDateCreated() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get dateModified => $_getSZ(6);
  @$pb.TagNumber(7)
  set dateModified($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDateModified() => $_has(6);
  @$pb.TagNumber(7)
  void clearDateModified() => clearField(7);

  @$pb.TagNumber(8)
  $1.ErrorModel get error => $_getN(7);
  @$pb.TagNumber(8)
  set error($1.ErrorModel v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasError() => $_has(7);
  @$pb.TagNumber(8)
  void clearError() => clearField(8);
  @$pb.TagNumber(8)
  $1.ErrorModel ensureError() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get residenceId => $_getSZ(8);
  @$pb.TagNumber(9)
  set residenceId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasResidenceId() => $_has(8);
  @$pb.TagNumber(9)
  void clearResidenceId() => clearField(9);
}

class CommiteeLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommiteeLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'commitee'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CommiteeId', protoName: 'CommiteeId')
    ..hasRequiredFields = false
  ;

  CommiteeLookupModel._() : super();
  factory CommiteeLookupModel({
    $core.String? commiteeId,
  }) {
    final _result = create();
    if (commiteeId != null) {
      _result.commiteeId = commiteeId;
    }
    return _result;
  }
  factory CommiteeLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommiteeLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommiteeLookupModel clone() => CommiteeLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommiteeLookupModel copyWith(void Function(CommiteeLookupModel) updates) => super.copyWith((message) => updates(message as CommiteeLookupModel)) as CommiteeLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommiteeLookupModel create() => CommiteeLookupModel._();
  CommiteeLookupModel createEmptyInstance() => create();
  static $pb.PbList<CommiteeLookupModel> createRepeated() => $pb.PbList<CommiteeLookupModel>();
  @$core.pragma('dart2js:noInline')
  static CommiteeLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommiteeLookupModel>(create);
  static CommiteeLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commiteeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set commiteeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommiteeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommiteeId() => clearField(1);
}

class ResCommiteeLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResCommiteeLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'commitee'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResCommiteeLookupModel._() : super();
  factory ResCommiteeLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResCommiteeLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResCommiteeLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResCommiteeLookupModel clone() => ResCommiteeLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResCommiteeLookupModel copyWith(void Function(ResCommiteeLookupModel) updates) => super.copyWith((message) => updates(message as ResCommiteeLookupModel)) as ResCommiteeLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResCommiteeLookupModel create() => ResCommiteeLookupModel._();
  ResCommiteeLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResCommiteeLookupModel> createRepeated() => $pb.PbList<ResCommiteeLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResCommiteeLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResCommiteeLookupModel>(create);
  static ResCommiteeLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class CommiteesList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommiteesList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'commitee'), createEmptyInstance: create)
    ..pc<CommiteeRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: CommiteeRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  CommiteesList._() : super();
  factory CommiteesList({
    $core.Iterable<CommiteeRequest>? items,
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
  factory CommiteesList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommiteesList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommiteesList clone() => CommiteesList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommiteesList copyWith(void Function(CommiteesList) updates) => super.copyWith((message) => updates(message as CommiteesList)) as CommiteesList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommiteesList create() => CommiteesList._();
  CommiteesList createEmptyInstance() => create();
  static $pb.PbList<CommiteesList> createRepeated() => $pb.PbList<CommiteesList>();
  @$core.pragma('dart2js:noInline')
  static CommiteesList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommiteesList>(create);
  static CommiteesList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CommiteeRequest> get items => $_getList(0);

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

