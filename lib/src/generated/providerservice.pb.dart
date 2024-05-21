///
//  Generated code. Do not modify.
//  source: providerservice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'residence.pb.dart' as $0;

import 'utility.pbenum.dart' as $1;

class SerProviderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerProviderResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'providerservice'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  SerProviderResponse._() : super();
  factory SerProviderResponse({
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
  factory SerProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerProviderResponse clone() => SerProviderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerProviderResponse copyWith(void Function(SerProviderResponse) updates) => super.copyWith((message) => updates(message as SerProviderResponse)) as SerProviderResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerProviderResponse create() => SerProviderResponse._();
  SerProviderResponse createEmptyInstance() => create();
  static $pb.PbList<SerProviderResponse> createRepeated() => $pb.PbList<SerProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static SerProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerProviderResponse>(create);
  static SerProviderResponse? _defaultInstance;

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

class SerProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerProviderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'providerservice'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SerProviderId', protoName: 'SerProviderId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CompanyName', protoName: 'CompanyName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.StatusModel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Logo', $pb.PbFieldType.OY, protoName: 'Logo')
    ..aOM<$0.ResidenceRequest>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'residence', subBuilder: $0.ResidenceRequest.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PhoneNumber', protoName: 'PhoneNumber')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Link', protoName: 'Link')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Price', protoName: 'Price')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Natureofbusiness', protoName: 'Natureofbusiness')
    ..hasRequiredFields = false
  ;

  SerProviderRequest._() : super();
  factory SerProviderRequest({
    $core.String? serProviderId,
    $core.String? companyName,
    $core.String? description,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.List<$core.int>? logo,
    $0.ResidenceRequest? residence,
    $core.String? residenceId,
    $core.String? phoneNumber,
    $core.String? link,
    $core.String? price,
    $core.String? natureofbusiness,
  }) {
    final _result = create();
    if (serProviderId != null) {
      _result.serProviderId = serProviderId;
    }
    if (companyName != null) {
      _result.companyName = companyName;
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
    if (logo != null) {
      _result.logo = logo;
    }
    if (residence != null) {
      _result.residence = residence;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (link != null) {
      _result.link = link;
    }
    if (price != null) {
      _result.price = price;
    }
    if (natureofbusiness != null) {
      _result.natureofbusiness = natureofbusiness;
    }
    return _result;
  }
  factory SerProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerProviderRequest clone() => SerProviderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerProviderRequest copyWith(void Function(SerProviderRequest) updates) => super.copyWith((message) => updates(message as SerProviderRequest)) as SerProviderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerProviderRequest create() => SerProviderRequest._();
  SerProviderRequest createEmptyInstance() => create();
  static $pb.PbList<SerProviderRequest> createRepeated() => $pb.PbList<SerProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static SerProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerProviderRequest>(create);
  static SerProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serProviderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set serProviderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSerProviderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSerProviderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get companyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set companyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompanyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompanyName() => clearField(2);

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
  $core.List<$core.int> get logo => $_getN(7);
  @$pb.TagNumber(8)
  set logo($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLogo() => $_has(7);
  @$pb.TagNumber(8)
  void clearLogo() => clearField(8);

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

  @$pb.TagNumber(11)
  $core.String get phoneNumber => $_getSZ(10);
  @$pb.TagNumber(11)
  set phoneNumber($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPhoneNumber() => $_has(10);
  @$pb.TagNumber(11)
  void clearPhoneNumber() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get link => $_getSZ(11);
  @$pb.TagNumber(12)
  set link($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLink() => $_has(11);
  @$pb.TagNumber(12)
  void clearLink() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get price => $_getSZ(12);
  @$pb.TagNumber(13)
  set price($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPrice() => $_has(12);
  @$pb.TagNumber(13)
  void clearPrice() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get natureofbusiness => $_getSZ(13);
  @$pb.TagNumber(14)
  set natureofbusiness($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNatureofbusiness() => $_has(13);
  @$pb.TagNumber(14)
  void clearNatureofbusiness() => clearField(14);
}

class SerProviderLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerProviderLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'providerservice'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SerProviderId', protoName: 'SerProviderId')
    ..hasRequiredFields = false
  ;

  SerProviderLookupModel._() : super();
  factory SerProviderLookupModel({
    $core.String? serProviderId,
  }) {
    final _result = create();
    if (serProviderId != null) {
      _result.serProviderId = serProviderId;
    }
    return _result;
  }
  factory SerProviderLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerProviderLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerProviderLookupModel clone() => SerProviderLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerProviderLookupModel copyWith(void Function(SerProviderLookupModel) updates) => super.copyWith((message) => updates(message as SerProviderLookupModel)) as SerProviderLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerProviderLookupModel create() => SerProviderLookupModel._();
  SerProviderLookupModel createEmptyInstance() => create();
  static $pb.PbList<SerProviderLookupModel> createRepeated() => $pb.PbList<SerProviderLookupModel>();
  @$core.pragma('dart2js:noInline')
  static SerProviderLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerProviderLookupModel>(create);
  static SerProviderLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serProviderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set serProviderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSerProviderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSerProviderId() => clearField(1);
}

class SerProvidersList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerProvidersList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'providerservice'), createEmptyInstance: create)
    ..pc<SerProviderRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: SerProviderRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  SerProvidersList._() : super();
  factory SerProvidersList({
    $core.Iterable<SerProviderRequest>? items,
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
  factory SerProvidersList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerProvidersList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerProvidersList clone() => SerProvidersList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerProvidersList copyWith(void Function(SerProvidersList) updates) => super.copyWith((message) => updates(message as SerProvidersList)) as SerProvidersList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerProvidersList create() => SerProvidersList._();
  SerProvidersList createEmptyInstance() => create();
  static $pb.PbList<SerProvidersList> createRepeated() => $pb.PbList<SerProvidersList>();
  @$core.pragma('dart2js:noInline')
  static SerProvidersList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerProvidersList>(create);
  static SerProvidersList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SerProviderRequest> get items => $_getList(0);

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

class ResSerProviderLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResSerProviderLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'providerservice'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResSerProviderLookupModel._() : super();
  factory ResSerProviderLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResSerProviderLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResSerProviderLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResSerProviderLookupModel clone() => ResSerProviderLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResSerProviderLookupModel copyWith(void Function(ResSerProviderLookupModel) updates) => super.copyWith((message) => updates(message as ResSerProviderLookupModel)) as ResSerProviderLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResSerProviderLookupModel create() => ResSerProviderLookupModel._();
  ResSerProviderLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResSerProviderLookupModel> createRepeated() => $pb.PbList<ResSerProviderLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResSerProviderLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResSerProviderLookupModel>(create);
  static ResSerProviderLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

