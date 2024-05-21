///
//  Generated code. Do not modify.
//  source: technician.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

import 'utility.pbenum.dart' as $1;

class TechnicianResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TechnicianResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'technician'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  TechnicianResponse._() : super();
  factory TechnicianResponse({
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
  factory TechnicianResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TechnicianResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TechnicianResponse clone() => TechnicianResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TechnicianResponse copyWith(void Function(TechnicianResponse) updates) => super.copyWith((message) => updates(message as TechnicianResponse)) as TechnicianResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TechnicianResponse create() => TechnicianResponse._();
  TechnicianResponse createEmptyInstance() => create();
  static $pb.PbList<TechnicianResponse> createRepeated() => $pb.PbList<TechnicianResponse>();
  @$core.pragma('dart2js:noInline')
  static TechnicianResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TechnicianResponse>(create);
  static TechnicianResponse? _defaultInstance;

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

class TechnicianRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TechnicianRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'technician'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TechnicianId', protoName: 'TechnicianId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TechnicianUserId', protoName: 'TechnicianUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ManagementId', protoName: 'ManagementId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'JobTitle', protoName: 'JobTitle')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.StatusModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TechnicianName', protoName: 'TechnicianName')
    ..e<$1.PrioritiesModel>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Priorities', $pb.PbFieldType.OE, protoName: 'Priorities', defaultOrMaker: $1.PrioritiesModel.PrioritiesNull, valueOf: $1.PrioritiesModel.valueOf, enumValues: $1.PrioritiesModel.values)
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Proof', $pb.PbFieldType.OY, protoName: 'Proof')
    ..pc<TechnicianDocsModel>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TechnicianDocs', $pb.PbFieldType.PM, protoName: 'TechnicianDocs', subBuilder: TechnicianDocsModel.create)
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Remark', protoName: 'Remark')
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isViewed', protoName: 'isViewed')
    ..hasRequiredFields = false
  ;

  TechnicianRequest._() : super();
  factory TechnicianRequest({
    $core.String? technicianId,
    $core.String? technicianUserId,
    $core.String? managementId,
    $core.String? jobTitle,
    $core.String? description,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.String? technicianName,
    $1.PrioritiesModel? priorities,
    $core.List<$core.int>? proof,
    $core.Iterable<TechnicianDocsModel>? technicianDocs,
    $core.String? remark,
    $core.bool? isViewed,
  }) {
    final _result = create();
    if (technicianId != null) {
      _result.technicianId = technicianId;
    }
    if (technicianUserId != null) {
      _result.technicianUserId = technicianUserId;
    }
    if (managementId != null) {
      _result.managementId = managementId;
    }
    if (jobTitle != null) {
      _result.jobTitle = jobTitle;
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
    if (technicianName != null) {
      _result.technicianName = technicianName;
    }
    if (priorities != null) {
      _result.priorities = priorities;
    }
    if (proof != null) {
      _result.proof = proof;
    }
    if (technicianDocs != null) {
      _result.technicianDocs.addAll(technicianDocs);
    }
    if (remark != null) {
      _result.remark = remark;
    }
    if (isViewed != null) {
      _result.isViewed = isViewed;
    }
    return _result;
  }
  factory TechnicianRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TechnicianRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TechnicianRequest clone() => TechnicianRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TechnicianRequest copyWith(void Function(TechnicianRequest) updates) => super.copyWith((message) => updates(message as TechnicianRequest)) as TechnicianRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TechnicianRequest create() => TechnicianRequest._();
  TechnicianRequest createEmptyInstance() => create();
  static $pb.PbList<TechnicianRequest> createRepeated() => $pb.PbList<TechnicianRequest>();
  @$core.pragma('dart2js:noInline')
  static TechnicianRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TechnicianRequest>(create);
  static TechnicianRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get technicianId => $_getSZ(0);
  @$pb.TagNumber(1)
  set technicianId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTechnicianId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTechnicianId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get technicianUserId => $_getSZ(1);
  @$pb.TagNumber(2)
  set technicianUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTechnicianUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTechnicianUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get managementId => $_getSZ(2);
  @$pb.TagNumber(3)
  set managementId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasManagementId() => $_has(2);
  @$pb.TagNumber(3)
  void clearManagementId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get jobTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set jobTitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJobTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearJobTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $1.StatusModel get status => $_getN(5);
  @$pb.TagNumber(6)
  set status($1.StatusModel v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

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
  $core.String get technicianName => $_getSZ(9);
  @$pb.TagNumber(10)
  set technicianName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTechnicianName() => $_has(9);
  @$pb.TagNumber(10)
  void clearTechnicianName() => clearField(10);

  @$pb.TagNumber(11)
  $1.PrioritiesModel get priorities => $_getN(10);
  @$pb.TagNumber(11)
  set priorities($1.PrioritiesModel v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPriorities() => $_has(10);
  @$pb.TagNumber(11)
  void clearPriorities() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get proof => $_getN(11);
  @$pb.TagNumber(12)
  set proof($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasProof() => $_has(11);
  @$pb.TagNumber(12)
  void clearProof() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<TechnicianDocsModel> get technicianDocs => $_getList(12);

  @$pb.TagNumber(14)
  $core.String get remark => $_getSZ(13);
  @$pb.TagNumber(14)
  set remark($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRemark() => $_has(13);
  @$pb.TagNumber(14)
  void clearRemark() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isViewed => $_getBF(14);
  @$pb.TagNumber(15)
  set isViewed($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasIsViewed() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsViewed() => clearField(15);
}

class TechnicianLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TechnicianLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'technician'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TechnicianId', protoName: 'TechnicianId')
    ..hasRequiredFields = false
  ;

  TechnicianLookupModel._() : super();
  factory TechnicianLookupModel({
    $core.String? technicianId,
  }) {
    final _result = create();
    if (technicianId != null) {
      _result.technicianId = technicianId;
    }
    return _result;
  }
  factory TechnicianLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TechnicianLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TechnicianLookupModel clone() => TechnicianLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TechnicianLookupModel copyWith(void Function(TechnicianLookupModel) updates) => super.copyWith((message) => updates(message as TechnicianLookupModel)) as TechnicianLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TechnicianLookupModel create() => TechnicianLookupModel._();
  TechnicianLookupModel createEmptyInstance() => create();
  static $pb.PbList<TechnicianLookupModel> createRepeated() => $pb.PbList<TechnicianLookupModel>();
  @$core.pragma('dart2js:noInline')
  static TechnicianLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TechnicianLookupModel>(create);
  static TechnicianLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get technicianId => $_getSZ(0);
  @$pb.TagNumber(1)
  set technicianId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTechnicianId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTechnicianId() => clearField(1);
}

class TechniciansList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TechniciansList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'technician'), createEmptyInstance: create)
    ..pc<TechnicianRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: TechnicianRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  TechniciansList._() : super();
  factory TechniciansList({
    $core.Iterable<TechnicianRequest>? items,
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
  factory TechniciansList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TechniciansList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TechniciansList clone() => TechniciansList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TechniciansList copyWith(void Function(TechniciansList) updates) => super.copyWith((message) => updates(message as TechniciansList)) as TechniciansList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TechniciansList create() => TechniciansList._();
  TechniciansList createEmptyInstance() => create();
  static $pb.PbList<TechniciansList> createRepeated() => $pb.PbList<TechniciansList>();
  @$core.pragma('dart2js:noInline')
  static TechniciansList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TechniciansList>(create);
  static TechniciansList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TechnicianRequest> get items => $_getList(0);

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

class TechnicianDocsModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TechnicianDocsModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'technician'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TechnicianDocId', protoName: 'TechnicianDocId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', $pb.PbFieldType.OY, protoName: 'File')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..aOM<TechnicianRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Technician', protoName: 'Technician', subBuilder: TechnicianRequest.create)
    ..aOM<$1.ErrorModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  TechnicianDocsModel._() : super();
  factory TechnicianDocsModel({
    $core.String? technicianDocId,
    $core.List<$core.int>? file,
    $core.String? fileType,
    $core.String? fileName,
    TechnicianRequest? technician,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (technicianDocId != null) {
      _result.technicianDocId = technicianDocId;
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
    if (technician != null) {
      _result.technician = technician;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory TechnicianDocsModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TechnicianDocsModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TechnicianDocsModel clone() => TechnicianDocsModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TechnicianDocsModel copyWith(void Function(TechnicianDocsModel) updates) => super.copyWith((message) => updates(message as TechnicianDocsModel)) as TechnicianDocsModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TechnicianDocsModel create() => TechnicianDocsModel._();
  TechnicianDocsModel createEmptyInstance() => create();
  static $pb.PbList<TechnicianDocsModel> createRepeated() => $pb.PbList<TechnicianDocsModel>();
  @$core.pragma('dart2js:noInline')
  static TechnicianDocsModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TechnicianDocsModel>(create);
  static TechnicianDocsModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get technicianDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set technicianDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTechnicianDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTechnicianDocId() => clearField(1);

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
  TechnicianRequest get technician => $_getN(4);
  @$pb.TagNumber(5)
  set technician(TechnicianRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTechnician() => $_has(4);
  @$pb.TagNumber(5)
  void clearTechnician() => clearField(5);
  @$pb.TagNumber(5)
  TechnicianRequest ensureTechnician() => $_ensure(4);

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

