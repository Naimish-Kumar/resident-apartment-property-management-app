///
//  Generated code. Do not modify.
//  source: slot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;
import 'residence.pb.dart' as $0;
import 'facility.pb.dart' as $2;

import 'utility.pbenum.dart' as $1;

class SlotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SlotResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'slot'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  SlotResponse._() : super();
  factory SlotResponse({
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
  factory SlotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlotResponse clone() => SlotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlotResponse copyWith(void Function(SlotResponse) updates) => super.copyWith((message) => updates(message as SlotResponse)) as SlotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SlotResponse create() => SlotResponse._();
  SlotResponse createEmptyInstance() => create();
  static $pb.PbList<SlotResponse> createRepeated() => $pb.PbList<SlotResponse>();
  @$core.pragma('dart2js:noInline')
  static SlotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlotResponse>(create);
  static SlotResponse? _defaultInstance;

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

class SlotFacilityLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SlotFacilityLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'slot'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilityId', protoName: 'FacilityId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  SlotFacilityLookupModel._() : super();
  factory SlotFacilityLookupModel({
    $core.String? facilityId,
    $core.String? residenceId,
  }) {
    final _result = create();
    if (facilityId != null) {
      _result.facilityId = facilityId;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory SlotFacilityLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlotFacilityLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlotFacilityLookupModel clone() => SlotFacilityLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlotFacilityLookupModel copyWith(void Function(SlotFacilityLookupModel) updates) => super.copyWith((message) => updates(message as SlotFacilityLookupModel)) as SlotFacilityLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SlotFacilityLookupModel create() => SlotFacilityLookupModel._();
  SlotFacilityLookupModel createEmptyInstance() => create();
  static $pb.PbList<SlotFacilityLookupModel> createRepeated() => $pb.PbList<SlotFacilityLookupModel>();
  @$core.pragma('dart2js:noInline')
  static SlotFacilityLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlotFacilityLookupModel>(create);
  static SlotFacilityLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get facilityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set facilityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFacilityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFacilityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get residenceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set residenceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResidenceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearResidenceId() => clearField(2);
}

class SlotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SlotRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'slot'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SlotId', protoName: 'SlotId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SlotName', protoName: 'SlotName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'From', protoName: 'From')
    ..e<$1.StatusModel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOM<$1.ErrorModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'To', protoName: 'To')
    ..aOM<$0.ResidenceRequest>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'residence', subBuilder: $0.ResidenceRequest.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'People', protoName: 'People')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilityId', protoName: 'FacilityId')
    ..aOM<$2.FacilityRequest>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Facility', protoName: 'Facility', subBuilder: $2.FacilityRequest.create)
    ..hasRequiredFields = false
  ;

  SlotRequest._() : super();
  factory SlotRequest({
    $core.String? slotId,
    $core.String? slotName,
    $core.String? from,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $1.ErrorModel? error,
    $core.String? to,
    $0.ResidenceRequest? residence,
    $core.String? residenceId,
    $core.String? people,
    $core.String? facilityId,
    $2.FacilityRequest? facility,
  }) {
    final _result = create();
    if (slotId != null) {
      _result.slotId = slotId;
    }
    if (slotName != null) {
      _result.slotName = slotName;
    }
    if (from != null) {
      _result.from = from;
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
    if (to != null) {
      _result.to = to;
    }
    if (residence != null) {
      _result.residence = residence;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (people != null) {
      _result.people = people;
    }
    if (facilityId != null) {
      _result.facilityId = facilityId;
    }
    if (facility != null) {
      _result.facility = facility;
    }
    return _result;
  }
  factory SlotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlotRequest clone() => SlotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlotRequest copyWith(void Function(SlotRequest) updates) => super.copyWith((message) => updates(message as SlotRequest)) as SlotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SlotRequest create() => SlotRequest._();
  SlotRequest createEmptyInstance() => create();
  static $pb.PbList<SlotRequest> createRepeated() => $pb.PbList<SlotRequest>();
  @$core.pragma('dart2js:noInline')
  static SlotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlotRequest>(create);
  static SlotRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get slotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set slotId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSlotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlotId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get slotName => $_getSZ(1);
  @$pb.TagNumber(2)
  set slotName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSlotName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSlotName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);

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
  $core.String get to => $_getSZ(7);
  @$pb.TagNumber(8)
  set to($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTo() => $_has(7);
  @$pb.TagNumber(8)
  void clearTo() => clearField(8);

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
  $core.String get people => $_getSZ(10);
  @$pb.TagNumber(11)
  set people($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPeople() => $_has(10);
  @$pb.TagNumber(11)
  void clearPeople() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get facilityId => $_getSZ(11);
  @$pb.TagNumber(12)
  set facilityId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFacilityId() => $_has(11);
  @$pb.TagNumber(12)
  void clearFacilityId() => clearField(12);

  @$pb.TagNumber(13)
  $2.FacilityRequest get facility => $_getN(12);
  @$pb.TagNumber(13)
  set facility($2.FacilityRequest v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasFacility() => $_has(12);
  @$pb.TagNumber(13)
  void clearFacility() => clearField(13);
  @$pb.TagNumber(13)
  $2.FacilityRequest ensureFacility() => $_ensure(12);
}

class SlotLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SlotLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'slot'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SlotId', protoName: 'SlotId')
    ..hasRequiredFields = false
  ;

  SlotLookupModel._() : super();
  factory SlotLookupModel({
    $core.String? slotId,
  }) {
    final _result = create();
    if (slotId != null) {
      _result.slotId = slotId;
    }
    return _result;
  }
  factory SlotLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlotLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlotLookupModel clone() => SlotLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlotLookupModel copyWith(void Function(SlotLookupModel) updates) => super.copyWith((message) => updates(message as SlotLookupModel)) as SlotLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SlotLookupModel create() => SlotLookupModel._();
  SlotLookupModel createEmptyInstance() => create();
  static $pb.PbList<SlotLookupModel> createRepeated() => $pb.PbList<SlotLookupModel>();
  @$core.pragma('dart2js:noInline')
  static SlotLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlotLookupModel>(create);
  static SlotLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get slotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set slotId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSlotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlotId() => clearField(1);
}

class SlotsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SlotsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'slot'), createEmptyInstance: create)
    ..pc<SlotRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: SlotRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  SlotsList._() : super();
  factory SlotsList({
    $core.Iterable<SlotRequest>? items,
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
  factory SlotsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlotsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlotsList clone() => SlotsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlotsList copyWith(void Function(SlotsList) updates) => super.copyWith((message) => updates(message as SlotsList)) as SlotsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SlotsList create() => SlotsList._();
  SlotsList createEmptyInstance() => create();
  static $pb.PbList<SlotsList> createRepeated() => $pb.PbList<SlotsList>();
  @$core.pragma('dart2js:noInline')
  static SlotsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlotsList>(create);
  static SlotsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SlotRequest> get items => $_getList(0);

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

class ResSlotLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResSlotLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'slot'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResSlotLookupModel._() : super();
  factory ResSlotLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResSlotLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResSlotLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResSlotLookupModel clone() => ResSlotLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResSlotLookupModel copyWith(void Function(ResSlotLookupModel) updates) => super.copyWith((message) => updates(message as ResSlotLookupModel)) as ResSlotLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResSlotLookupModel create() => ResSlotLookupModel._();
  ResSlotLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResSlotLookupModel> createRepeated() => $pb.PbList<ResSlotLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResSlotLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResSlotLookupModel>(create);
  static ResSlotLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

