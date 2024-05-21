///
//  Generated code. Do not modify.
//  source: complaint.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'user.pb.dart' as $0;

import 'utility.pbenum.dart' as $1;

class ComplaintResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComplaintResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'complaint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ComplaintResponse._() : super();
  factory ComplaintResponse({
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
  factory ComplaintResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplaintResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplaintResponse clone() => ComplaintResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplaintResponse copyWith(void Function(ComplaintResponse) updates) => super.copyWith((message) => updates(message as ComplaintResponse)) as ComplaintResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplaintResponse create() => ComplaintResponse._();
  ComplaintResponse createEmptyInstance() => create();
  static $pb.PbList<ComplaintResponse> createRepeated() => $pb.PbList<ComplaintResponse>();
  @$core.pragma('dart2js:noInline')
  static ComplaintResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplaintResponse>(create);
  static ComplaintResponse? _defaultInstance;

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

class ComplaintRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComplaintRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'complaint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ComplaintId', protoName: 'ComplaintId')
    ..aOM<$0.UserRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $0.UserRequest.create)
    ..pc<ComplaintDocsModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ComplaintDocs', $pb.PbFieldType.PM, protoName: 'ComplaintDocs', subBuilder: ComplaintDocsModel.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Subject', protoName: 'Subject')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Message', protoName: 'Message')
    ..e<$1.StatusModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingName', protoName: 'BuildingName')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitNumber', protoName: 'UnitNumber')
    ..hasRequiredFields = false
  ;

  ComplaintRequest._() : super();
  factory ComplaintRequest({
    $core.String? complaintId,
    $0.UserRequest? user,
    $core.Iterable<ComplaintDocsModel>? complaintDocs,
    $core.String? subject,
    $core.String? message,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.String? userId,
    $core.String? residenceId,
    $core.String? buildingName,
    $core.String? unitNumber,
  }) {
    final _result = create();
    if (complaintId != null) {
      _result.complaintId = complaintId;
    }
    if (user != null) {
      _result.user = user;
    }
    if (complaintDocs != null) {
      _result.complaintDocs.addAll(complaintDocs);
    }
    if (subject != null) {
      _result.subject = subject;
    }
    if (message != null) {
      _result.message = message;
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
    if (userId != null) {
      _result.userId = userId;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (buildingName != null) {
      _result.buildingName = buildingName;
    }
    if (unitNumber != null) {
      _result.unitNumber = unitNumber;
    }
    return _result;
  }
  factory ComplaintRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplaintRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplaintRequest clone() => ComplaintRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplaintRequest copyWith(void Function(ComplaintRequest) updates) => super.copyWith((message) => updates(message as ComplaintRequest)) as ComplaintRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplaintRequest create() => ComplaintRequest._();
  ComplaintRequest createEmptyInstance() => create();
  static $pb.PbList<ComplaintRequest> createRepeated() => $pb.PbList<ComplaintRequest>();
  @$core.pragma('dart2js:noInline')
  static ComplaintRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplaintRequest>(create);
  static ComplaintRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get complaintId => $_getSZ(0);
  @$pb.TagNumber(1)
  set complaintId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComplaintId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComplaintId() => clearField(1);

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
  $core.List<ComplaintDocsModel> get complaintDocs => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get subject => $_getSZ(3);
  @$pb.TagNumber(4)
  set subject($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubject() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubject() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);

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
  $core.String get userId => $_getSZ(9);
  @$pb.TagNumber(10)
  set userId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearUserId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get residenceId => $_getSZ(10);
  @$pb.TagNumber(11)
  set residenceId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasResidenceId() => $_has(10);
  @$pb.TagNumber(11)
  void clearResidenceId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get buildingName => $_getSZ(11);
  @$pb.TagNumber(12)
  set buildingName($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBuildingName() => $_has(11);
  @$pb.TagNumber(12)
  void clearBuildingName() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get unitNumber => $_getSZ(12);
  @$pb.TagNumber(13)
  set unitNumber($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUnitNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearUnitNumber() => clearField(13);
}

class ComplaintLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComplaintLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'complaint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ComplaintId', protoName: 'ComplaintId')
    ..hasRequiredFields = false
  ;

  ComplaintLookupModel._() : super();
  factory ComplaintLookupModel({
    $core.String? complaintId,
  }) {
    final _result = create();
    if (complaintId != null) {
      _result.complaintId = complaintId;
    }
    return _result;
  }
  factory ComplaintLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplaintLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplaintLookupModel clone() => ComplaintLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplaintLookupModel copyWith(void Function(ComplaintLookupModel) updates) => super.copyWith((message) => updates(message as ComplaintLookupModel)) as ComplaintLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplaintLookupModel create() => ComplaintLookupModel._();
  ComplaintLookupModel createEmptyInstance() => create();
  static $pb.PbList<ComplaintLookupModel> createRepeated() => $pb.PbList<ComplaintLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ComplaintLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplaintLookupModel>(create);
  static ComplaintLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get complaintId => $_getSZ(0);
  @$pb.TagNumber(1)
  set complaintId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComplaintId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComplaintId() => clearField(1);
}

class ComplaintDocLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComplaintDocLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'complaint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ComplaintDocId', protoName: 'ComplaintDocId')
    ..hasRequiredFields = false
  ;

  ComplaintDocLookupModel._() : super();
  factory ComplaintDocLookupModel({
    $core.String? complaintDocId,
  }) {
    final _result = create();
    if (complaintDocId != null) {
      _result.complaintDocId = complaintDocId;
    }
    return _result;
  }
  factory ComplaintDocLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplaintDocLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplaintDocLookupModel clone() => ComplaintDocLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplaintDocLookupModel copyWith(void Function(ComplaintDocLookupModel) updates) => super.copyWith((message) => updates(message as ComplaintDocLookupModel)) as ComplaintDocLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplaintDocLookupModel create() => ComplaintDocLookupModel._();
  ComplaintDocLookupModel createEmptyInstance() => create();
  static $pb.PbList<ComplaintDocLookupModel> createRepeated() => $pb.PbList<ComplaintDocLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ComplaintDocLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplaintDocLookupModel>(create);
  static ComplaintDocLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get complaintDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set complaintDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComplaintDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComplaintDocId() => clearField(1);
}

class ResComplaintLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResComplaintLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'complaint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResComplaintLookupModel._() : super();
  factory ResComplaintLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResComplaintLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResComplaintLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResComplaintLookupModel clone() => ResComplaintLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResComplaintLookupModel copyWith(void Function(ResComplaintLookupModel) updates) => super.copyWith((message) => updates(message as ResComplaintLookupModel)) as ResComplaintLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResComplaintLookupModel create() => ResComplaintLookupModel._();
  ResComplaintLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResComplaintLookupModel> createRepeated() => $pb.PbList<ResComplaintLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResComplaintLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResComplaintLookupModel>(create);
  static ResComplaintLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class ComplaintsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComplaintsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'complaint'), createEmptyInstance: create)
    ..pc<ComplaintRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: ComplaintRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ComplaintsList._() : super();
  factory ComplaintsList({
    $core.Iterable<ComplaintRequest>? items,
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
  factory ComplaintsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplaintsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplaintsList clone() => ComplaintsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplaintsList copyWith(void Function(ComplaintsList) updates) => super.copyWith((message) => updates(message as ComplaintsList)) as ComplaintsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplaintsList create() => ComplaintsList._();
  ComplaintsList createEmptyInstance() => create();
  static $pb.PbList<ComplaintsList> createRepeated() => $pb.PbList<ComplaintsList>();
  @$core.pragma('dart2js:noInline')
  static ComplaintsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplaintsList>(create);
  static ComplaintsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ComplaintRequest> get items => $_getList(0);

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

class ComplaintDocsModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComplaintDocsModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'complaint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ComplaintDocId', protoName: 'ComplaintDocId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', $pb.PbFieldType.OY, protoName: 'File')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..aOM<ComplaintRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Complaint', protoName: 'Complaint', subBuilder: ComplaintRequest.create)
    ..aOM<$1.ErrorModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ComplaintDocsModel._() : super();
  factory ComplaintDocsModel({
    $core.String? complaintDocId,
    $core.List<$core.int>? file,
    $core.String? fileType,
    $core.String? fileName,
    ComplaintRequest? complaint,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (complaintDocId != null) {
      _result.complaintDocId = complaintDocId;
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
    if (complaint != null) {
      _result.complaint = complaint;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory ComplaintDocsModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplaintDocsModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplaintDocsModel clone() => ComplaintDocsModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplaintDocsModel copyWith(void Function(ComplaintDocsModel) updates) => super.copyWith((message) => updates(message as ComplaintDocsModel)) as ComplaintDocsModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplaintDocsModel create() => ComplaintDocsModel._();
  ComplaintDocsModel createEmptyInstance() => create();
  static $pb.PbList<ComplaintDocsModel> createRepeated() => $pb.PbList<ComplaintDocsModel>();
  @$core.pragma('dart2js:noInline')
  static ComplaintDocsModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplaintDocsModel>(create);
  static ComplaintDocsModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get complaintDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set complaintDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComplaintDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComplaintDocId() => clearField(1);

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
  ComplaintRequest get complaint => $_getN(4);
  @$pb.TagNumber(5)
  set complaint(ComplaintRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasComplaint() => $_has(4);
  @$pb.TagNumber(5)
  void clearComplaint() => clearField(5);
  @$pb.TagNumber(5)
  ComplaintRequest ensureComplaint() => $_ensure(4);

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

