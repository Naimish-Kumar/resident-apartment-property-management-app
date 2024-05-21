///
//  Generated code. Do not modify.
//  source: announcement.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

import 'utility.pbenum.dart' as $1;

class AnnouncementResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnnouncementResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AnnouncementResponse._() : super();
  factory AnnouncementResponse({
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
  factory AnnouncementResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementResponse clone() => AnnouncementResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementResponse copyWith(void Function(AnnouncementResponse) updates) => super.copyWith((message) => updates(message as AnnouncementResponse)) as AnnouncementResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnnouncementResponse create() => AnnouncementResponse._();
  AnnouncementResponse createEmptyInstance() => create();
  static $pb.PbList<AnnouncementResponse> createRepeated() => $pb.PbList<AnnouncementResponse>();
  @$core.pragma('dart2js:noInline')
  static AnnouncementResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnnouncementResponse>(create);
  static AnnouncementResponse? _defaultInstance;

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

class AnnouncementRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnnouncementRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AnnouncementId', protoName: 'AnnouncementId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Users', protoName: 'Users')
    ..pc<AnnouncementDocsModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AnnouncementDocs', $pb.PbFieldType.PM, protoName: 'AnnouncementDocs', subBuilder: AnnouncementDocsModel.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CreatedByUserId', protoName: 'CreatedByUserId')
    ..pc<UserRequestData>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserList', $pb.PbFieldType.PM, protoName: 'UserList', subBuilder: UserRequestData.create)
    ..e<$1.AnnouncementTypeModel>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AnnouncementType', $pb.PbFieldType.OE, protoName: 'AnnouncementType', defaultOrMaker: $1.AnnouncementTypeModel.AnnouncementNill, valueOf: $1.AnnouncementTypeModel.valueOf, enumValues: $1.AnnouncementTypeModel.values)
    ..hasRequiredFields = false
  ;

  AnnouncementRequest._() : super();
  factory AnnouncementRequest({
    $core.String? announcementId,
    $core.String? users,
    $core.Iterable<AnnouncementDocsModel>? announcementDocs,
    $core.String? title,
    $core.String? description,
    $core.String? residenceId,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.String? createdByUserId,
    $core.Iterable<UserRequestData>? userList,
    $1.AnnouncementTypeModel? announcementType,
  }) {
    final _result = create();
    if (announcementId != null) {
      _result.announcementId = announcementId;
    }
    if (users != null) {
      _result.users = users;
    }
    if (announcementDocs != null) {
      _result.announcementDocs.addAll(announcementDocs);
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
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
    if (createdByUserId != null) {
      _result.createdByUserId = createdByUserId;
    }
    if (userList != null) {
      _result.userList.addAll(userList);
    }
    if (announcementType != null) {
      _result.announcementType = announcementType;
    }
    return _result;
  }
  factory AnnouncementRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementRequest clone() => AnnouncementRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementRequest copyWith(void Function(AnnouncementRequest) updates) => super.copyWith((message) => updates(message as AnnouncementRequest)) as AnnouncementRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnnouncementRequest create() => AnnouncementRequest._();
  AnnouncementRequest createEmptyInstance() => create();
  static $pb.PbList<AnnouncementRequest> createRepeated() => $pb.PbList<AnnouncementRequest>();
  @$core.pragma('dart2js:noInline')
  static AnnouncementRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnnouncementRequest>(create);
  static AnnouncementRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get announcementId => $_getSZ(0);
  @$pb.TagNumber(1)
  set announcementId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnnouncementId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnnouncementId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get users => $_getSZ(1);
  @$pb.TagNumber(2)
  set users($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsers() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsers() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AnnouncementDocsModel> get announcementDocs => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get residenceId => $_getSZ(5);
  @$pb.TagNumber(6)
  set residenceId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasResidenceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearResidenceId() => clearField(6);

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
  $core.String get createdByUserId => $_getSZ(9);
  @$pb.TagNumber(10)
  set createdByUserId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedByUserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedByUserId() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<UserRequestData> get userList => $_getList(10);

  @$pb.TagNumber(12)
  $1.AnnouncementTypeModel get announcementType => $_getN(11);
  @$pb.TagNumber(12)
  set announcementType($1.AnnouncementTypeModel v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasAnnouncementType() => $_has(11);
  @$pb.TagNumber(12)
  void clearAnnouncementType() => clearField(12);
}

class UserRequestData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserRequestData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FirstName', protoName: 'FirstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastName', protoName: 'LastName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NRIC', protoName: 'NRIC')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Passport', protoName: 'Passport')
    ..hasRequiredFields = false
  ;

  UserRequestData._() : super();
  factory UserRequestData({
    $core.String? userId,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? nRIC,
    $core.String? email,
    $core.String? passport,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (nRIC != null) {
      _result.nRIC = nRIC;
    }
    if (email != null) {
      _result.email = email;
    }
    if (passport != null) {
      _result.passport = passport;
    }
    return _result;
  }
  factory UserRequestData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRequestData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRequestData clone() => UserRequestData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRequestData copyWith(void Function(UserRequestData) updates) => super.copyWith((message) => updates(message as UserRequestData)) as UserRequestData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRequestData create() => UserRequestData._();
  UserRequestData createEmptyInstance() => create();
  static $pb.PbList<UserRequestData> createRepeated() => $pb.PbList<UserRequestData>();
  @$core.pragma('dart2js:noInline')
  static UserRequestData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRequestData>(create);
  static UserRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nRIC => $_getSZ(3);
  @$pb.TagNumber(4)
  set nRIC($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNRIC() => $_has(3);
  @$pb.TagNumber(4)
  void clearNRIC() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get passport => $_getSZ(5);
  @$pb.TagNumber(6)
  set passport($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPassport() => $_has(5);
  @$pb.TagNumber(6)
  void clearPassport() => clearField(6);
}

class AnnouncementLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnnouncementLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AnnouncementId', protoName: 'AnnouncementId')
    ..hasRequiredFields = false
  ;

  AnnouncementLookupModel._() : super();
  factory AnnouncementLookupModel({
    $core.String? announcementId,
  }) {
    final _result = create();
    if (announcementId != null) {
      _result.announcementId = announcementId;
    }
    return _result;
  }
  factory AnnouncementLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementLookupModel clone() => AnnouncementLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementLookupModel copyWith(void Function(AnnouncementLookupModel) updates) => super.copyWith((message) => updates(message as AnnouncementLookupModel)) as AnnouncementLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnnouncementLookupModel create() => AnnouncementLookupModel._();
  AnnouncementLookupModel createEmptyInstance() => create();
  static $pb.PbList<AnnouncementLookupModel> createRepeated() => $pb.PbList<AnnouncementLookupModel>();
  @$core.pragma('dart2js:noInline')
  static AnnouncementLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnnouncementLookupModel>(create);
  static AnnouncementLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get announcementId => $_getSZ(0);
  @$pb.TagNumber(1)
  set announcementId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnnouncementId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnnouncementId() => clearField(1);
}

class AnnouncementDocLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnnouncementDocLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AnnouncementDocId', protoName: 'AnnouncementDocId')
    ..hasRequiredFields = false
  ;

  AnnouncementDocLookupModel._() : super();
  factory AnnouncementDocLookupModel({
    $core.String? announcementDocId,
  }) {
    final _result = create();
    if (announcementDocId != null) {
      _result.announcementDocId = announcementDocId;
    }
    return _result;
  }
  factory AnnouncementDocLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementDocLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementDocLookupModel clone() => AnnouncementDocLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementDocLookupModel copyWith(void Function(AnnouncementDocLookupModel) updates) => super.copyWith((message) => updates(message as AnnouncementDocLookupModel)) as AnnouncementDocLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnnouncementDocLookupModel create() => AnnouncementDocLookupModel._();
  AnnouncementDocLookupModel createEmptyInstance() => create();
  static $pb.PbList<AnnouncementDocLookupModel> createRepeated() => $pb.PbList<AnnouncementDocLookupModel>();
  @$core.pragma('dart2js:noInline')
  static AnnouncementDocLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnnouncementDocLookupModel>(create);
  static AnnouncementDocLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get announcementDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set announcementDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnnouncementDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnnouncementDocId() => clearField(1);
}

class ResAnnouncementLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResAnnouncementLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResAnnouncementLookupModel._() : super();
  factory ResAnnouncementLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResAnnouncementLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResAnnouncementLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResAnnouncementLookupModel clone() => ResAnnouncementLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResAnnouncementLookupModel copyWith(void Function(ResAnnouncementLookupModel) updates) => super.copyWith((message) => updates(message as ResAnnouncementLookupModel)) as ResAnnouncementLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResAnnouncementLookupModel create() => ResAnnouncementLookupModel._();
  ResAnnouncementLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResAnnouncementLookupModel> createRepeated() => $pb.PbList<ResAnnouncementLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResAnnouncementLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResAnnouncementLookupModel>(create);
  static ResAnnouncementLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class AnnouncementsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnnouncementsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..pc<AnnouncementRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: AnnouncementRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AnnouncementsList._() : super();
  factory AnnouncementsList({
    $core.Iterable<AnnouncementRequest>? items,
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
  factory AnnouncementsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementsList clone() => AnnouncementsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementsList copyWith(void Function(AnnouncementsList) updates) => super.copyWith((message) => updates(message as AnnouncementsList)) as AnnouncementsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnnouncementsList create() => AnnouncementsList._();
  AnnouncementsList createEmptyInstance() => create();
  static $pb.PbList<AnnouncementsList> createRepeated() => $pb.PbList<AnnouncementsList>();
  @$core.pragma('dart2js:noInline')
  static AnnouncementsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnnouncementsList>(create);
  static AnnouncementsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AnnouncementRequest> get items => $_getList(0);

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

class AnnouncementDocsModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnnouncementDocsModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'announcement'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AnnouncementDocId', protoName: 'AnnouncementDocId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', $pb.PbFieldType.OY, protoName: 'File')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..aOM<AnnouncementRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Announcement', protoName: 'Announcement', subBuilder: AnnouncementRequest.create)
    ..aOM<$1.ErrorModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  AnnouncementDocsModel._() : super();
  factory AnnouncementDocsModel({
    $core.String? announcementDocId,
    $core.List<$core.int>? file,
    $core.String? fileType,
    $core.String? fileName,
    AnnouncementRequest? announcement,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (announcementDocId != null) {
      _result.announcementDocId = announcementDocId;
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
    if (announcement != null) {
      _result.announcement = announcement;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory AnnouncementDocsModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementDocsModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementDocsModel clone() => AnnouncementDocsModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementDocsModel copyWith(void Function(AnnouncementDocsModel) updates) => super.copyWith((message) => updates(message as AnnouncementDocsModel)) as AnnouncementDocsModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnnouncementDocsModel create() => AnnouncementDocsModel._();
  AnnouncementDocsModel createEmptyInstance() => create();
  static $pb.PbList<AnnouncementDocsModel> createRepeated() => $pb.PbList<AnnouncementDocsModel>();
  @$core.pragma('dart2js:noInline')
  static AnnouncementDocsModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnnouncementDocsModel>(create);
  static AnnouncementDocsModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get announcementDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set announcementDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnnouncementDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnnouncementDocId() => clearField(1);

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
  AnnouncementRequest get announcement => $_getN(4);
  @$pb.TagNumber(5)
  set announcement(AnnouncementRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAnnouncement() => $_has(4);
  @$pb.TagNumber(5)
  void clearAnnouncement() => clearField(5);
  @$pb.TagNumber(5)
  AnnouncementRequest ensureAnnouncement() => $_ensure(4);

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

