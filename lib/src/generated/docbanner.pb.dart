///
//  Generated code. Do not modify.
//  source: docbanner.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

import 'utility.pbenum.dart' as $1;

class DocBannerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DocBannerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'docbanner'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  DocBannerResponse._() : super();
  factory DocBannerResponse({
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
  factory DocBannerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocBannerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocBannerResponse clone() => DocBannerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocBannerResponse copyWith(void Function(DocBannerResponse) updates) => super.copyWith((message) => updates(message as DocBannerResponse)) as DocBannerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocBannerResponse create() => DocBannerResponse._();
  DocBannerResponse createEmptyInstance() => create();
  static $pb.PbList<DocBannerResponse> createRepeated() => $pb.PbList<DocBannerResponse>();
  @$core.pragma('dart2js:noInline')
  static DocBannerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocBannerResponse>(create);
  static DocBannerResponse? _defaultInstance;

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

class DocBannerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DocBannerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'docbanner'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DocBannerId', protoName: 'DocBannerId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..pc<DocBannerDocsModel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DocBannerDocs', $pb.PbFieldType.PM, protoName: 'DocBannerDocs', subBuilder: DocBannerDocsModel.create)
    ..e<$1.DocBannerTypeModel>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DocBannerType', $pb.PbFieldType.OE, protoName: 'DocBannerType', defaultOrMaker: $1.DocBannerTypeModel.bNone, valueOf: $1.DocBannerTypeModel.valueOf, enumValues: $1.DocBannerTypeModel.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOM<$1.ErrorModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  DocBannerRequest._() : super();
  factory DocBannerRequest({
    $core.String? docBannerId,
    $core.String? title,
    $core.String? description,
    $core.Iterable<DocBannerDocsModel>? docBannerDocs,
    $1.DocBannerTypeModel? docBannerType,
    $core.String? dateCreated,
    $core.String? dateModified,
    $core.String? residenceId,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (docBannerId != null) {
      _result.docBannerId = docBannerId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (docBannerDocs != null) {
      _result.docBannerDocs.addAll(docBannerDocs);
    }
    if (docBannerType != null) {
      _result.docBannerType = docBannerType;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    if (dateModified != null) {
      _result.dateModified = dateModified;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory DocBannerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocBannerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocBannerRequest clone() => DocBannerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocBannerRequest copyWith(void Function(DocBannerRequest) updates) => super.copyWith((message) => updates(message as DocBannerRequest)) as DocBannerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocBannerRequest create() => DocBannerRequest._();
  DocBannerRequest createEmptyInstance() => create();
  static $pb.PbList<DocBannerRequest> createRepeated() => $pb.PbList<DocBannerRequest>();
  @$core.pragma('dart2js:noInline')
  static DocBannerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocBannerRequest>(create);
  static DocBannerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get docBannerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set docBannerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocBannerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocBannerId() => clearField(1);

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
  $core.List<DocBannerDocsModel> get docBannerDocs => $_getList(3);

  @$pb.TagNumber(5)
  $1.DocBannerTypeModel get docBannerType => $_getN(4);
  @$pb.TagNumber(5)
  set docBannerType($1.DocBannerTypeModel v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDocBannerType() => $_has(4);
  @$pb.TagNumber(5)
  void clearDocBannerType() => clearField(5);

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
  $core.String get residenceId => $_getSZ(7);
  @$pb.TagNumber(8)
  set residenceId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasResidenceId() => $_has(7);
  @$pb.TagNumber(8)
  void clearResidenceId() => clearField(8);

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
}

class DocBannerLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DocBannerLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'docbanner'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DocBannerId', protoName: 'DocBannerId')
    ..hasRequiredFields = false
  ;

  DocBannerLookupModel._() : super();
  factory DocBannerLookupModel({
    $core.String? docBannerId,
  }) {
    final _result = create();
    if (docBannerId != null) {
      _result.docBannerId = docBannerId;
    }
    return _result;
  }
  factory DocBannerLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocBannerLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocBannerLookupModel clone() => DocBannerLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocBannerLookupModel copyWith(void Function(DocBannerLookupModel) updates) => super.copyWith((message) => updates(message as DocBannerLookupModel)) as DocBannerLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocBannerLookupModel create() => DocBannerLookupModel._();
  DocBannerLookupModel createEmptyInstance() => create();
  static $pb.PbList<DocBannerLookupModel> createRepeated() => $pb.PbList<DocBannerLookupModel>();
  @$core.pragma('dart2js:noInline')
  static DocBannerLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocBannerLookupModel>(create);
  static DocBannerLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get docBannerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set docBannerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocBannerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocBannerId() => clearField(1);
}

class DocBannerDocLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DocBannerDocLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'docbanner'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DocBannerDocId', protoName: 'DocBannerDocId')
    ..hasRequiredFields = false
  ;

  DocBannerDocLookupModel._() : super();
  factory DocBannerDocLookupModel({
    $core.String? docBannerDocId,
  }) {
    final _result = create();
    if (docBannerDocId != null) {
      _result.docBannerDocId = docBannerDocId;
    }
    return _result;
  }
  factory DocBannerDocLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocBannerDocLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocBannerDocLookupModel clone() => DocBannerDocLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocBannerDocLookupModel copyWith(void Function(DocBannerDocLookupModel) updates) => super.copyWith((message) => updates(message as DocBannerDocLookupModel)) as DocBannerDocLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocBannerDocLookupModel create() => DocBannerDocLookupModel._();
  DocBannerDocLookupModel createEmptyInstance() => create();
  static $pb.PbList<DocBannerDocLookupModel> createRepeated() => $pb.PbList<DocBannerDocLookupModel>();
  @$core.pragma('dart2js:noInline')
  static DocBannerDocLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocBannerDocLookupModel>(create);
  static DocBannerDocLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get docBannerDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set docBannerDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocBannerDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocBannerDocId() => clearField(1);
}

class ResDocBannerLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResDocBannerLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'docbanner'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResDocBannerLookupModel._() : super();
  factory ResDocBannerLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResDocBannerLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResDocBannerLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResDocBannerLookupModel clone() => ResDocBannerLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResDocBannerLookupModel copyWith(void Function(ResDocBannerLookupModel) updates) => super.copyWith((message) => updates(message as ResDocBannerLookupModel)) as ResDocBannerLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResDocBannerLookupModel create() => ResDocBannerLookupModel._();
  ResDocBannerLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResDocBannerLookupModel> createRepeated() => $pb.PbList<ResDocBannerLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResDocBannerLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResDocBannerLookupModel>(create);
  static ResDocBannerLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class DocBannersList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DocBannersList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'docbanner'), createEmptyInstance: create)
    ..pc<DocBannerRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: DocBannerRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  DocBannersList._() : super();
  factory DocBannersList({
    $core.Iterable<DocBannerRequest>? items,
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
  factory DocBannersList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocBannersList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocBannersList clone() => DocBannersList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocBannersList copyWith(void Function(DocBannersList) updates) => super.copyWith((message) => updates(message as DocBannersList)) as DocBannersList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocBannersList create() => DocBannersList._();
  DocBannersList createEmptyInstance() => create();
  static $pb.PbList<DocBannersList> createRepeated() => $pb.PbList<DocBannersList>();
  @$core.pragma('dart2js:noInline')
  static DocBannersList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocBannersList>(create);
  static DocBannersList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DocBannerRequest> get items => $_getList(0);

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

class DocBannerDocsModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DocBannerDocsModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'docbanner'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DocBannerDocsId', protoName: 'DocBannerDocsId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', $pb.PbFieldType.OY, protoName: 'File')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..aOM<DocBannerRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DocBanner', protoName: 'DocBanner', subBuilder: DocBannerRequest.create)
    ..aOM<$1.ErrorModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  DocBannerDocsModel._() : super();
  factory DocBannerDocsModel({
    $core.String? docBannerDocsId,
    $core.List<$core.int>? file,
    $core.String? fileType,
    $core.String? fileName,
    DocBannerRequest? docBanner,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (docBannerDocsId != null) {
      _result.docBannerDocsId = docBannerDocsId;
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
    if (docBanner != null) {
      _result.docBanner = docBanner;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory DocBannerDocsModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocBannerDocsModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocBannerDocsModel clone() => DocBannerDocsModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocBannerDocsModel copyWith(void Function(DocBannerDocsModel) updates) => super.copyWith((message) => updates(message as DocBannerDocsModel)) as DocBannerDocsModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocBannerDocsModel create() => DocBannerDocsModel._();
  DocBannerDocsModel createEmptyInstance() => create();
  static $pb.PbList<DocBannerDocsModel> createRepeated() => $pb.PbList<DocBannerDocsModel>();
  @$core.pragma('dart2js:noInline')
  static DocBannerDocsModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocBannerDocsModel>(create);
  static DocBannerDocsModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get docBannerDocsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set docBannerDocsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocBannerDocsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocBannerDocsId() => clearField(1);

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
  DocBannerRequest get docBanner => $_getN(4);
  @$pb.TagNumber(5)
  set docBanner(DocBannerRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDocBanner() => $_has(4);
  @$pb.TagNumber(5)
  void clearDocBanner() => clearField(5);
  @$pb.TagNumber(5)
  DocBannerRequest ensureDocBanner() => $_ensure(4);

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

