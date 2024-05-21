///
//  Generated code. Do not modify.
//  source: checkpoint.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'residence.pb.dart' as $0;

import 'utility.pbenum.dart' as $1;

class CheckpointResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckpointResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkpoint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  CheckpointResponse._() : super();
  factory CheckpointResponse({
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
  factory CheckpointResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckpointResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckpointResponse clone() => CheckpointResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckpointResponse copyWith(void Function(CheckpointResponse) updates) => super.copyWith((message) => updates(message as CheckpointResponse)) as CheckpointResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckpointResponse create() => CheckpointResponse._();
  CheckpointResponse createEmptyInstance() => create();
  static $pb.PbList<CheckpointResponse> createRepeated() => $pb.PbList<CheckpointResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckpointResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckpointResponse>(create);
  static CheckpointResponse? _defaultInstance;

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

class CheckpointVisitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckpointVisitRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkpoint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckpointId', protoName: 'CheckpointId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Proof', $pb.PbFieldType.OY, protoName: 'Proof')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', protoName: 'Status')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckDate', protoName: 'CheckDate')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VisiteCheckpointId', protoName: 'VisiteCheckpointId')
    ..aOM<$1.ErrorModel>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Location', protoName: 'Location')
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Proof2', $pb.PbFieldType.OY, protoName: 'Proof2')
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Proof3', $pb.PbFieldType.OY, protoName: 'Proof3')
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Proof4', $pb.PbFieldType.OY, protoName: 'Proof4')
    ..hasRequiredFields = false
  ;

  CheckpointVisitRequest._() : super();
  factory CheckpointVisitRequest({
    $core.String? checkpointId,
    $core.String? userId,
    $core.String? residenceId,
    $core.List<$core.int>? proof,
    $core.bool? status,
    $core.String? checkDate,
    $core.String? visiteCheckpointId,
    $1.ErrorModel? error,
    $core.String? dateCreated,
    $core.String? dateModified,
    $core.String? location,
    $core.List<$core.int>? proof2,
    $core.List<$core.int>? proof3,
    $core.List<$core.int>? proof4,
  }) {
    final _result = create();
    if (checkpointId != null) {
      _result.checkpointId = checkpointId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (proof != null) {
      _result.proof = proof;
    }
    if (status != null) {
      _result.status = status;
    }
    if (checkDate != null) {
      _result.checkDate = checkDate;
    }
    if (visiteCheckpointId != null) {
      _result.visiteCheckpointId = visiteCheckpointId;
    }
    if (error != null) {
      _result.error = error;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    if (dateModified != null) {
      _result.dateModified = dateModified;
    }
    if (location != null) {
      _result.location = location;
    }
    if (proof2 != null) {
      _result.proof2 = proof2;
    }
    if (proof3 != null) {
      _result.proof3 = proof3;
    }
    if (proof4 != null) {
      _result.proof4 = proof4;
    }
    return _result;
  }
  factory CheckpointVisitRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckpointVisitRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckpointVisitRequest clone() => CheckpointVisitRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckpointVisitRequest copyWith(void Function(CheckpointVisitRequest) updates) => super.copyWith((message) => updates(message as CheckpointVisitRequest)) as CheckpointVisitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckpointVisitRequest create() => CheckpointVisitRequest._();
  CheckpointVisitRequest createEmptyInstance() => create();
  static $pb.PbList<CheckpointVisitRequest> createRepeated() => $pb.PbList<CheckpointVisitRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckpointVisitRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckpointVisitRequest>(create);
  static CheckpointVisitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get checkpointId => $_getSZ(0);
  @$pb.TagNumber(1)
  set checkpointId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCheckpointId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCheckpointId() => clearField(1);

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
  $core.List<$core.int> get proof => $_getN(3);
  @$pb.TagNumber(4)
  set proof($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProof() => $_has(3);
  @$pb.TagNumber(4)
  void clearProof() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get status => $_getBF(4);
  @$pb.TagNumber(5)
  set status($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get checkDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set checkDate($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCheckDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearCheckDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get visiteCheckpointId => $_getSZ(6);
  @$pb.TagNumber(7)
  set visiteCheckpointId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVisiteCheckpointId() => $_has(6);
  @$pb.TagNumber(7)
  void clearVisiteCheckpointId() => clearField(7);

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
  $core.String get dateCreated => $_getSZ(8);
  @$pb.TagNumber(9)
  set dateCreated($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDateCreated() => $_has(8);
  @$pb.TagNumber(9)
  void clearDateCreated() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get dateModified => $_getSZ(9);
  @$pb.TagNumber(10)
  set dateModified($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDateModified() => $_has(9);
  @$pb.TagNumber(10)
  void clearDateModified() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get location => $_getSZ(10);
  @$pb.TagNumber(11)
  set location($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLocation() => $_has(10);
  @$pb.TagNumber(11)
  void clearLocation() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get proof2 => $_getN(11);
  @$pb.TagNumber(12)
  set proof2($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasProof2() => $_has(11);
  @$pb.TagNumber(12)
  void clearProof2() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get proof3 => $_getN(12);
  @$pb.TagNumber(13)
  set proof3($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasProof3() => $_has(12);
  @$pb.TagNumber(13)
  void clearProof3() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get proof4 => $_getN(13);
  @$pb.TagNumber(14)
  set proof4($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasProof4() => $_has(13);
  @$pb.TagNumber(14)
  void clearProof4() => clearField(14);
}

class CheckpointRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckpointRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkpoint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckpointId', protoName: 'CheckpointId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.StatusModel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', $pb.PbFieldType.OY, protoName: 'File')
    ..aOM<$0.ResidenceRequest>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'residence', subBuilder: $0.ResidenceRequest.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  CheckpointRequest._() : super();
  factory CheckpointRequest({
    $core.String? checkpointId,
    $core.String? title,
    $core.String? description,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.List<$core.int>? file,
    $0.ResidenceRequest? residence,
    $core.String? residenceId,
  }) {
    final _result = create();
    if (checkpointId != null) {
      _result.checkpointId = checkpointId;
    }
    if (title != null) {
      _result.title = title;
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
    if (file != null) {
      _result.file = file;
    }
    if (residence != null) {
      _result.residence = residence;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory CheckpointRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckpointRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckpointRequest clone() => CheckpointRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckpointRequest copyWith(void Function(CheckpointRequest) updates) => super.copyWith((message) => updates(message as CheckpointRequest)) as CheckpointRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckpointRequest create() => CheckpointRequest._();
  CheckpointRequest createEmptyInstance() => create();
  static $pb.PbList<CheckpointRequest> createRepeated() => $pb.PbList<CheckpointRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckpointRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckpointRequest>(create);
  static CheckpointRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get checkpointId => $_getSZ(0);
  @$pb.TagNumber(1)
  set checkpointId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCheckpointId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCheckpointId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $1.StatusModel get status => $_getN(3);
  @$pb.TagNumber(4)
  set status($1.StatusModel v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

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

  @$pb.TagNumber(7)
  $1.ErrorModel get error => $_getN(6);
  @$pb.TagNumber(7)
  set error($1.ErrorModel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasError() => $_has(6);
  @$pb.TagNumber(7)
  void clearError() => clearField(7);
  @$pb.TagNumber(7)
  $1.ErrorModel ensureError() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get file => $_getN(7);
  @$pb.TagNumber(8)
  set file($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFile() => $_has(7);
  @$pb.TagNumber(8)
  void clearFile() => clearField(8);

  @$pb.TagNumber(9)
  $0.ResidenceRequest get residence => $_getN(8);
  @$pb.TagNumber(9)
  set residence($0.ResidenceRequest v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasResidence() => $_has(8);
  @$pb.TagNumber(9)
  void clearResidence() => clearField(9);
  @$pb.TagNumber(9)
  $0.ResidenceRequest ensureResidence() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get residenceId => $_getSZ(9);
  @$pb.TagNumber(10)
  set residenceId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasResidenceId() => $_has(9);
  @$pb.TagNumber(10)
  void clearResidenceId() => clearField(10);
}

class CheckpointLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckpointLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkpoint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckpointId', protoName: 'CheckpointId')
    ..hasRequiredFields = false
  ;

  CheckpointLookupModel._() : super();
  factory CheckpointLookupModel({
    $core.String? checkpointId,
  }) {
    final _result = create();
    if (checkpointId != null) {
      _result.checkpointId = checkpointId;
    }
    return _result;
  }
  factory CheckpointLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckpointLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckpointLookupModel clone() => CheckpointLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckpointLookupModel copyWith(void Function(CheckpointLookupModel) updates) => super.copyWith((message) => updates(message as CheckpointLookupModel)) as CheckpointLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckpointLookupModel create() => CheckpointLookupModel._();
  CheckpointLookupModel createEmptyInstance() => create();
  static $pb.PbList<CheckpointLookupModel> createRepeated() => $pb.PbList<CheckpointLookupModel>();
  @$core.pragma('dart2js:noInline')
  static CheckpointLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckpointLookupModel>(create);
  static CheckpointLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get checkpointId => $_getSZ(0);
  @$pb.TagNumber(1)
  set checkpointId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCheckpointId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCheckpointId() => clearField(1);
}

class CheckpointsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckpointsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkpoint'), createEmptyInstance: create)
    ..pc<CheckpointRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: CheckpointRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  CheckpointsList._() : super();
  factory CheckpointsList({
    $core.Iterable<CheckpointRequest>? items,
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
  factory CheckpointsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckpointsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckpointsList clone() => CheckpointsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckpointsList copyWith(void Function(CheckpointsList) updates) => super.copyWith((message) => updates(message as CheckpointsList)) as CheckpointsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckpointsList create() => CheckpointsList._();
  CheckpointsList createEmptyInstance() => create();
  static $pb.PbList<CheckpointsList> createRepeated() => $pb.PbList<CheckpointsList>();
  @$core.pragma('dart2js:noInline')
  static CheckpointsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckpointsList>(create);
  static CheckpointsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CheckpointRequest> get items => $_getList(0);

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

class ResCheckpointLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResCheckpointLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkpoint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResCheckpointLookupModel._() : super();
  factory ResCheckpointLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResCheckpointLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResCheckpointLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResCheckpointLookupModel clone() => ResCheckpointLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResCheckpointLookupModel copyWith(void Function(ResCheckpointLookupModel) updates) => super.copyWith((message) => updates(message as ResCheckpointLookupModel)) as ResCheckpointLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResCheckpointLookupModel create() => ResCheckpointLookupModel._();
  ResCheckpointLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResCheckpointLookupModel> createRepeated() => $pb.PbList<ResCheckpointLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResCheckpointLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResCheckpointLookupModel>(create);
  static ResCheckpointLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

