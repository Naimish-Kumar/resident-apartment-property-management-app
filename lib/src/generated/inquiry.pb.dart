///
//  Generated code. Do not modify.
//  source: inquiry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

import 'utility.pbenum.dart' as $1;

class InquiryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InquiryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inquiry'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  InquiryResponse._() : super();
  factory InquiryResponse({
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
  factory InquiryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InquiryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InquiryResponse clone() => InquiryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InquiryResponse copyWith(void Function(InquiryResponse) updates) => super.copyWith((message) => updates(message as InquiryResponse)) as InquiryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InquiryResponse create() => InquiryResponse._();
  InquiryResponse createEmptyInstance() => create();
  static $pb.PbList<InquiryResponse> createRepeated() => $pb.PbList<InquiryResponse>();
  @$core.pragma('dart2js:noInline')
  static InquiryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InquiryResponse>(create);
  static InquiryResponse? _defaultInstance;

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

class InquiryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InquiryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inquiry'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InquiryId', protoName: 'InquiryId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Subject', protoName: 'Subject')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Message', protoName: 'Message')
    ..e<$1.StatusModel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  InquiryRequest._() : super();
  factory InquiryRequest({
    $core.String? inquiryId,
    $core.String? subject,
    $core.String? message,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.String? residenceId,
  }) {
    final _result = create();
    if (inquiryId != null) {
      _result.inquiryId = inquiryId;
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
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory InquiryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InquiryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InquiryRequest clone() => InquiryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InquiryRequest copyWith(void Function(InquiryRequest) updates) => super.copyWith((message) => updates(message as InquiryRequest)) as InquiryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InquiryRequest create() => InquiryRequest._();
  InquiryRequest createEmptyInstance() => create();
  static $pb.PbList<InquiryRequest> createRepeated() => $pb.PbList<InquiryRequest>();
  @$core.pragma('dart2js:noInline')
  static InquiryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InquiryRequest>(create);
  static InquiryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inquiryId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inquiryId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInquiryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInquiryId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subject => $_getSZ(1);
  @$pb.TagNumber(2)
  set subject($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubject() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubject() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

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
  $core.String get residenceId => $_getSZ(7);
  @$pb.TagNumber(8)
  set residenceId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasResidenceId() => $_has(7);
  @$pb.TagNumber(8)
  void clearResidenceId() => clearField(8);
}

class InquiryLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InquiryLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inquiry'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InquiryId', protoName: 'InquiryId')
    ..hasRequiredFields = false
  ;

  InquiryLookupModel._() : super();
  factory InquiryLookupModel({
    $core.String? inquiryId,
  }) {
    final _result = create();
    if (inquiryId != null) {
      _result.inquiryId = inquiryId;
    }
    return _result;
  }
  factory InquiryLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InquiryLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InquiryLookupModel clone() => InquiryLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InquiryLookupModel copyWith(void Function(InquiryLookupModel) updates) => super.copyWith((message) => updates(message as InquiryLookupModel)) as InquiryLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InquiryLookupModel create() => InquiryLookupModel._();
  InquiryLookupModel createEmptyInstance() => create();
  static $pb.PbList<InquiryLookupModel> createRepeated() => $pb.PbList<InquiryLookupModel>();
  @$core.pragma('dart2js:noInline')
  static InquiryLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InquiryLookupModel>(create);
  static InquiryLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inquiryId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inquiryId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInquiryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInquiryId() => clearField(1);
}

class ResInquiryLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResInquiryLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inquiry'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResInquiryLookupModel._() : super();
  factory ResInquiryLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResInquiryLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResInquiryLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResInquiryLookupModel clone() => ResInquiryLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResInquiryLookupModel copyWith(void Function(ResInquiryLookupModel) updates) => super.copyWith((message) => updates(message as ResInquiryLookupModel)) as ResInquiryLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResInquiryLookupModel create() => ResInquiryLookupModel._();
  ResInquiryLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResInquiryLookupModel> createRepeated() => $pb.PbList<ResInquiryLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResInquiryLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResInquiryLookupModel>(create);
  static ResInquiryLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class InquirysList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InquirysList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inquiry'), createEmptyInstance: create)
    ..pc<InquiryRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: InquiryRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  InquirysList._() : super();
  factory InquirysList({
    $core.Iterable<InquiryRequest>? items,
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
  factory InquirysList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InquirysList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InquirysList clone() => InquirysList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InquirysList copyWith(void Function(InquirysList) updates) => super.copyWith((message) => updates(message as InquirysList)) as InquirysList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InquirysList create() => InquirysList._();
  InquirysList createEmptyInstance() => create();
  static $pb.PbList<InquirysList> createRepeated() => $pb.PbList<InquirysList>();
  @$core.pragma('dart2js:noInline')
  static InquirysList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InquirysList>(create);
  static InquirysList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<InquiryRequest> get items => $_getList(0);

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

