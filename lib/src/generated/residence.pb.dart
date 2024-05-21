///
//  Generated code. Do not modify.
//  source: residence.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:flutter/src/material/dropdown.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'utility.pb.dart' as $1;

import 'utility.pbenum.dart' as $1;

class ResidencesParkingList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidencesParkingList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..pc<ResidenceParkingResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: ResidenceParkingResponse.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ResidencesParkingList._() : super();
  factory ResidencesParkingList({
    $core.Iterable<ResidenceParkingResponse>? items,
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
  factory ResidencesParkingList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidencesParkingList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidencesParkingList clone() => ResidencesParkingList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidencesParkingList copyWith(void Function(ResidencesParkingList) updates) => super.copyWith((message) => updates(message as ResidencesParkingList)) as ResidencesParkingList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidencesParkingList create() => ResidencesParkingList._();
  ResidencesParkingList createEmptyInstance() => create();
  static $pb.PbList<ResidencesParkingList> createRepeated() => $pb.PbList<ResidencesParkingList>();
  @$core.pragma('dart2js:noInline')
  static ResidencesParkingList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidencesParkingList>(create);
  static ResidencesParkingList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResidenceParkingResponse> get items => $_getList(0);

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

  map(DropdownMenuItem<ResidenceParkingResponse> Function(ResidenceParkingResponse? e) param0) {}
}

class ResidenceParkingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceParkingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ParkingId', protoName: 'ParkingId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ParkingNumber', $pb.PbFieldType.O3, protoName: 'ParkingNumber')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ParkingName', protoName: 'ParkingName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VisitorId', protoName: 'VisitorId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckInDateTime', protoName: 'CheckInDateTime')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckOutDateTime', protoName: 'CheckOutDateTime')
    ..hasRequiredFields = false
  ;

  ResidenceParkingResponse._() : super();
  factory ResidenceParkingResponse({
    $core.String? parkingId,
    $core.String? residenceId,
    $core.int? parkingNumber,
    $core.String? parkingName,
    $core.String? visitorId,
    $core.String? checkInDateTime,
    $core.String? checkOutDateTime,
  }) {
    final _result = create();
    if (parkingId != null) {
      _result.parkingId = parkingId;
    }
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (parkingNumber != null) {
      _result.parkingNumber = parkingNumber;
    }
    if (parkingName != null) {
      _result.parkingName = parkingName;
    }
    if (visitorId != null) {
      _result.visitorId = visitorId;
    }
    if (checkInDateTime != null) {
      _result.checkInDateTime = checkInDateTime;
    }
    if (checkOutDateTime != null) {
      _result.checkOutDateTime = checkOutDateTime;
    }
    return _result;
  }
  factory ResidenceParkingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceParkingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceParkingResponse clone() => ResidenceParkingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceParkingResponse copyWith(void Function(ResidenceParkingResponse) updates) => super.copyWith((message) => updates(message as ResidenceParkingResponse)) as ResidenceParkingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceParkingResponse create() => ResidenceParkingResponse._();
  ResidenceParkingResponse createEmptyInstance() => create();
  static $pb.PbList<ResidenceParkingResponse> createRepeated() => $pb.PbList<ResidenceParkingResponse>();
  @$core.pragma('dart2js:noInline')
  static ResidenceParkingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceParkingResponse>(create);
  static ResidenceParkingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get parkingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set parkingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParkingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParkingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get residenceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set residenceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResidenceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearResidenceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get parkingNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set parkingNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasParkingNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearParkingNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get parkingName => $_getSZ(3);
  @$pb.TagNumber(4)
  set parkingName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParkingName() => $_has(3);
  @$pb.TagNumber(4)
  void clearParkingName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get visitorId => $_getSZ(4);
  @$pb.TagNumber(5)
  set visitorId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVisitorId() => $_has(4);
  @$pb.TagNumber(5)
  void clearVisitorId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get checkInDateTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set checkInDateTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCheckInDateTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCheckInDateTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get checkOutDateTime => $_getSZ(6);
  @$pb.TagNumber(7)
  set checkOutDateTime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCheckOutDateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCheckOutDateTime() => clearField(7);
}

class ResidenceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Response', protoName: 'Response')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsOk', protoName: 'IsOk')
    ..aOM<$1.ErrorModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ResidenceResponse._() : super();
  factory ResidenceResponse({
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
  factory ResidenceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceResponse clone() => ResidenceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceResponse copyWith(void Function(ResidenceResponse) updates) => super.copyWith((message) => updates(message as ResidenceResponse)) as ResidenceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceResponse create() => ResidenceResponse._();
  ResidenceResponse createEmptyInstance() => create();
  static $pb.PbList<ResidenceResponse> createRepeated() => $pb.PbList<ResidenceResponse>();
  @$core.pragma('dart2js:noInline')
  static ResidenceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceResponse>(create);
  static ResidenceResponse? _defaultInstance;

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

class ResidenceLookupModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceLookupModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..hasRequiredFields = false
  ;

  ResidenceLookupModel._() : super();
  factory ResidenceLookupModel({
    $core.String? residenceId,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    return _result;
  }
  factory ResidenceLookupModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceLookupModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceLookupModel clone() => ResidenceLookupModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceLookupModel copyWith(void Function(ResidenceLookupModel) updates) => super.copyWith((message) => updates(message as ResidenceLookupModel)) as ResidenceLookupModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceLookupModel create() => ResidenceLookupModel._();
  ResidenceLookupModel createEmptyInstance() => create();
  static $pb.PbList<ResidenceLookupModel> createRepeated() => $pb.PbList<ResidenceLookupModel>();
  @$core.pragma('dart2js:noInline')
  static ResidenceLookupModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceLookupModel>(create);
  static ResidenceLookupModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);
}

class ResidenceDocLookUpModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceDocLookUpModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceDocId', protoName: 'ResidenceDocId')
    ..hasRequiredFields = false
  ;

  ResidenceDocLookUpModel._() : super();
  factory ResidenceDocLookUpModel({
    $core.String? residenceDocId,
  }) {
    final _result = create();
    if (residenceDocId != null) {
      _result.residenceDocId = residenceDocId;
    }
    return _result;
  }
  factory ResidenceDocLookUpModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceDocLookUpModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceDocLookUpModel clone() => ResidenceDocLookUpModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceDocLookUpModel copyWith(void Function(ResidenceDocLookUpModel) updates) => super.copyWith((message) => updates(message as ResidenceDocLookUpModel)) as ResidenceDocLookUpModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceDocLookUpModel create() => ResidenceDocLookUpModel._();
  ResidenceDocLookUpModel createEmptyInstance() => create();
  static $pb.PbList<ResidenceDocLookUpModel> createRepeated() => $pb.PbList<ResidenceDocLookUpModel>();
  @$core.pragma('dart2js:noInline')
  static ResidenceDocLookUpModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceDocLookUpModel>(create);
  static ResidenceDocLookUpModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceDocId() => clearField(1);
}

class ResidenceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceId', protoName: 'ResidenceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceName', protoName: 'ResidenceName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PhoneNumber', protoName: 'PhoneNumber')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OfficeNumber', protoName: 'OfficeNumber')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'EmailAddress', protoName: 'EmailAddress')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address1', protoName: 'Address1')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address2', protoName: 'Address2')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'City', protoName: 'City')
    ..e<$1.StateListModel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', $pb.PbFieldType.OE, protoName: 'State', defaultOrMaker: $1.StateListModel.SLNull, valueOf: $1.StateListModel.valueOf, enumValues: $1.StateListModel.values)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ZipCode', $pb.PbFieldType.O3, protoName: 'ZipCode')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Country', protoName: 'Country')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.StatusModel>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Price', $pb.PbFieldType.OD, protoName: 'Price')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..pc<ResidenceDocModel>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceDocs', $pb.PbFieldType.PM, protoName: 'ResidenceDocs', subBuilder: ResidenceDocModel.create)
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..e<$1.ResidenceTypeModel>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceType', $pb.PbFieldType.OE, protoName: 'ResidenceType', defaultOrMaker: $1.ResidenceTypeModel.RTNull, valueOf: $1.ResidenceTypeModel.valueOf, enumValues: $1.ResidenceTypeModel.values)
    ..aOM<$1.ErrorModel>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ManagementId', protoName: 'ManagementId')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ManagementName', protoName: 'ManagementName')
    ..pc<ResFacility>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResFacility', $pb.PbFieldType.PM, protoName: 'ResFacility', subBuilder: ResFacility.create)
    ..pc<ResBuilding>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResBuilding', $pb.PbFieldType.PM, protoName: 'ResBuilding', subBuilder: ResBuilding.create)
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SubscriptionStart', protoName: 'SubscriptionStart')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SubscriptionEnd', protoName: 'SubscriptionEnd')
    ..hasRequiredFields = false
  ;

  ResidenceRequest._() : super();
  factory ResidenceRequest({
    $core.String? residenceId,
    $core.String? residenceName,
    $core.String? phoneNumber,
    $core.String? officeNumber,
    $core.String? emailAddress,
    $core.String? address1,
    $core.String? address2,
    $core.String? city,
    $1.StateListModel? state,
    $core.int? zipCode,
    $core.String? country,
    $core.String? description,
    $1.StatusModel? status,
    $core.double? price,
    $core.String? dateCreated,
    $core.String? dateModified,
    $core.Iterable<ResidenceDocModel>? residenceDocs,
    $core.String? fileType,
    $core.String? fileName,
    $1.ResidenceTypeModel? residenceType,
    $1.ErrorModel? error,
    $core.String? managementId,
    $core.String? managementName,
    $core.Iterable<ResFacility>? resFacility,
    $core.Iterable<ResBuilding>? resBuilding,
    $core.String? subscriptionStart,
    $core.String? subscriptionEnd,
  }) {
    final _result = create();
    if (residenceId != null) {
      _result.residenceId = residenceId;
    }
    if (residenceName != null) {
      _result.residenceName = residenceName;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (officeNumber != null) {
      _result.officeNumber = officeNumber;
    }
    if (emailAddress != null) {
      _result.emailAddress = emailAddress;
    }
    if (address1 != null) {
      _result.address1 = address1;
    }
    if (address2 != null) {
      _result.address2 = address2;
    }
    if (city != null) {
      _result.city = city;
    }
    if (state != null) {
      _result.state = state;
    }
    if (zipCode != null) {
      _result.zipCode = zipCode;
    }
    if (country != null) {
      _result.country = country;
    }
    if (description != null) {
      _result.description = description;
    }
    if (status != null) {
      _result.status = status;
    }
    if (price != null) {
      _result.price = price;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    if (dateModified != null) {
      _result.dateModified = dateModified;
    }
    if (residenceDocs != null) {
      _result.residenceDocs.addAll(residenceDocs);
    }
    if (fileType != null) {
      _result.fileType = fileType;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (residenceType != null) {
      _result.residenceType = residenceType;
    }
    if (error != null) {
      _result.error = error;
    }
    if (managementId != null) {
      _result.managementId = managementId;
    }
    if (managementName != null) {
      _result.managementName = managementName;
    }
    if (resFacility != null) {
      _result.resFacility.addAll(resFacility);
    }
    if (resBuilding != null) {
      _result.resBuilding.addAll(resBuilding);
    }
    if (subscriptionStart != null) {
      _result.subscriptionStart = subscriptionStart;
    }
    if (subscriptionEnd != null) {
      _result.subscriptionEnd = subscriptionEnd;
    }
    return _result;
  }
  factory ResidenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceRequest clone() => ResidenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceRequest copyWith(void Function(ResidenceRequest) updates) => super.copyWith((message) => updates(message as ResidenceRequest)) as ResidenceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceRequest create() => ResidenceRequest._();
  ResidenceRequest createEmptyInstance() => create();
  static $pb.PbList<ResidenceRequest> createRepeated() => $pb.PbList<ResidenceRequest>();
  @$core.pragma('dart2js:noInline')
  static ResidenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceRequest>(create);
  static ResidenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get residenceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set residenceName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResidenceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearResidenceName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get officeNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set officeNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOfficeNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearOfficeNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get emailAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set emailAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmailAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmailAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get address1 => $_getSZ(5);
  @$pb.TagNumber(6)
  set address1($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAddress1() => $_has(5);
  @$pb.TagNumber(6)
  void clearAddress1() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get address2 => $_getSZ(6);
  @$pb.TagNumber(7)
  set address2($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAddress2() => $_has(6);
  @$pb.TagNumber(7)
  void clearAddress2() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get city => $_getSZ(7);
  @$pb.TagNumber(8)
  set city($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCity() => $_has(7);
  @$pb.TagNumber(8)
  void clearCity() => clearField(8);

  @$pb.TagNumber(9)
  $1.StateListModel get state => $_getN(8);
  @$pb.TagNumber(9)
  set state($1.StateListModel v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasState() => $_has(8);
  @$pb.TagNumber(9)
  void clearState() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get zipCode => $_getIZ(9);
  @$pb.TagNumber(10)
  set zipCode($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasZipCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearZipCode() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get country => $_getSZ(10);
  @$pb.TagNumber(11)
  set country($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCountry() => $_has(10);
  @$pb.TagNumber(11)
  void clearCountry() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get description => $_getSZ(11);
  @$pb.TagNumber(12)
  set description($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDescription() => $_has(11);
  @$pb.TagNumber(12)
  void clearDescription() => clearField(12);

  @$pb.TagNumber(13)
  $1.StatusModel get status => $_getN(12);
  @$pb.TagNumber(13)
  set status($1.StatusModel v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearStatus() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get price => $_getN(13);
  @$pb.TagNumber(14)
  set price($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPrice() => $_has(13);
  @$pb.TagNumber(14)
  void clearPrice() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get dateCreated => $_getSZ(14);
  @$pb.TagNumber(15)
  set dateCreated($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDateCreated() => $_has(14);
  @$pb.TagNumber(15)
  void clearDateCreated() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get dateModified => $_getSZ(15);
  @$pb.TagNumber(16)
  set dateModified($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasDateModified() => $_has(15);
  @$pb.TagNumber(16)
  void clearDateModified() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<ResidenceDocModel> get residenceDocs => $_getList(16);

  @$pb.TagNumber(18)
  $core.String get fileType => $_getSZ(17);
  @$pb.TagNumber(18)
  set fileType($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasFileType() => $_has(17);
  @$pb.TagNumber(18)
  void clearFileType() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get fileName => $_getSZ(18);
  @$pb.TagNumber(19)
  set fileName($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasFileName() => $_has(18);
  @$pb.TagNumber(19)
  void clearFileName() => clearField(19);

  @$pb.TagNumber(20)
  $1.ResidenceTypeModel get residenceType => $_getN(19);
  @$pb.TagNumber(20)
  set residenceType($1.ResidenceTypeModel v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasResidenceType() => $_has(19);
  @$pb.TagNumber(20)
  void clearResidenceType() => clearField(20);

  @$pb.TagNumber(21)
  $1.ErrorModel get error => $_getN(20);
  @$pb.TagNumber(21)
  set error($1.ErrorModel v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasError() => $_has(20);
  @$pb.TagNumber(21)
  void clearError() => clearField(21);
  @$pb.TagNumber(21)
  $1.ErrorModel ensureError() => $_ensure(20);

  @$pb.TagNumber(22)
  $core.String get managementId => $_getSZ(21);
  @$pb.TagNumber(22)
  set managementId($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasManagementId() => $_has(21);
  @$pb.TagNumber(22)
  void clearManagementId() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get managementName => $_getSZ(22);
  @$pb.TagNumber(23)
  set managementName($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasManagementName() => $_has(22);
  @$pb.TagNumber(23)
  void clearManagementName() => clearField(23);

  @$pb.TagNumber(24)
  $core.List<ResFacility> get resFacility => $_getList(23);

  @$pb.TagNumber(25)
  $core.List<ResBuilding> get resBuilding => $_getList(24);

  @$pb.TagNumber(26)
  $core.String get subscriptionStart => $_getSZ(25);
  @$pb.TagNumber(26)
  set subscriptionStart($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasSubscriptionStart() => $_has(25);
  @$pb.TagNumber(26)
  void clearSubscriptionStart() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get subscriptionEnd => $_getSZ(26);
  @$pb.TagNumber(27)
  set subscriptionEnd($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasSubscriptionEnd() => $_has(26);
  @$pb.TagNumber(27)
  void clearSubscriptionEnd() => clearField(27);
}

class ResFacility extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResFacility', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilityId', protoName: 'FacilityId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FacilityName', protoName: 'FacilityName')
    ..hasRequiredFields = false
  ;

  ResFacility._() : super();
  factory ResFacility({
    $core.String? facilityId,
    $core.String? facilityName,
  }) {
    final _result = create();
    if (facilityId != null) {
      _result.facilityId = facilityId;
    }
    if (facilityName != null) {
      _result.facilityName = facilityName;
    }
    return _result;
  }
  factory ResFacility.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResFacility.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResFacility clone() => ResFacility()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResFacility copyWith(void Function(ResFacility) updates) => super.copyWith((message) => updates(message as ResFacility)) as ResFacility; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResFacility create() => ResFacility._();
  ResFacility createEmptyInstance() => create();
  static $pb.PbList<ResFacility> createRepeated() => $pb.PbList<ResFacility>();
  @$core.pragma('dart2js:noInline')
  static ResFacility getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResFacility>(create);
  static ResFacility? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get facilityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set facilityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFacilityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFacilityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get facilityName => $_getSZ(1);
  @$pb.TagNumber(2)
  set facilityName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFacilityName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFacilityName() => clearField(2);
}

class ResBuilding extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResBuilding', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingId', protoName: 'BuildingId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingName', protoName: 'BuildingName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildingPrefix', protoName: 'BuildingPrefix')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalFloor', $pb.PbFieldType.O3, protoName: 'TotalFloor')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnitPerFloor', $pb.PbFieldType.O3, protoName: 'UnitPerFloor')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Description', protoName: 'Description')
    ..e<$1.StatusModel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $1.StatusModel.SNull, valueOf: $1.StatusModel.valueOf, enumValues: $1.StatusModel.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateCreated', protoName: 'DateCreated')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DateModified', protoName: 'DateModified')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsUnitCreated', protoName: 'IsUnitCreated')
    ..hasRequiredFields = false
  ;

  ResBuilding._() : super();
  factory ResBuilding({
    $core.String? buildingId,
    $core.String? buildingName,
    $core.String? buildingPrefix,
    $core.int? totalFloor,
    $core.int? unitPerFloor,
    $core.String? description,
    $1.StatusModel? status,
    $core.String? dateCreated,
    $core.String? dateModified,
    $core.bool? isUnitCreated,
  }) {
    final _result = create();
    if (buildingId != null) {
      _result.buildingId = buildingId;
    }
    if (buildingName != null) {
      _result.buildingName = buildingName;
    }
    if (buildingPrefix != null) {
      _result.buildingPrefix = buildingPrefix;
    }
    if (totalFloor != null) {
      _result.totalFloor = totalFloor;
    }
    if (unitPerFloor != null) {
      _result.unitPerFloor = unitPerFloor;
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
    if (isUnitCreated != null) {
      _result.isUnitCreated = isUnitCreated;
    }
    return _result;
  }
  factory ResBuilding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResBuilding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResBuilding clone() => ResBuilding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResBuilding copyWith(void Function(ResBuilding) updates) => super.copyWith((message) => updates(message as ResBuilding)) as ResBuilding; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResBuilding create() => ResBuilding._();
  ResBuilding createEmptyInstance() => create();
  static $pb.PbList<ResBuilding> createRepeated() => $pb.PbList<ResBuilding>();
  @$core.pragma('dart2js:noInline')
  static ResBuilding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResBuilding>(create);
  static ResBuilding? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get buildingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set buildingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBuildingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBuildingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get buildingName => $_getSZ(1);
  @$pb.TagNumber(2)
  set buildingName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuildingName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildingName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get buildingPrefix => $_getSZ(2);
  @$pb.TagNumber(3)
  set buildingPrefix($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBuildingPrefix() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuildingPrefix() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalFloor => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalFloor($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalFloor() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalFloor() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get unitPerFloor => $_getIZ(4);
  @$pb.TagNumber(5)
  set unitPerFloor($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnitPerFloor() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnitPerFloor() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $1.StatusModel get status => $_getN(6);
  @$pb.TagNumber(7)
  set status($1.StatusModel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dateCreated => $_getSZ(7);
  @$pb.TagNumber(8)
  set dateCreated($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDateCreated() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateCreated() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get dateModified => $_getSZ(8);
  @$pb.TagNumber(9)
  set dateModified($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDateModified() => $_has(8);
  @$pb.TagNumber(9)
  void clearDateModified() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isUnitCreated => $_getBF(9);
  @$pb.TagNumber(10)
  set isUnitCreated($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsUnitCreated() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsUnitCreated() => clearField(10);
}

class ResidenceDocModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidenceDocModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidenceDocId', protoName: 'ResidenceDocId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', $pb.PbFieldType.OY, protoName: 'File')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..aOM<ResidenceRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Residence', protoName: 'Residence', subBuilder: ResidenceRequest.create)
    ..aOM<$1.ErrorModel>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ResidenceDocModel._() : super();
  factory ResidenceDocModel({
    $core.String? residenceDocId,
    $core.List<$core.int>? file,
    $core.String? fileType,
    $core.String? fileName,
    ResidenceRequest? residence,
    $1.ErrorModel? error,
  }) {
    final _result = create();
    if (residenceDocId != null) {
      _result.residenceDocId = residenceDocId;
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
    if (residence != null) {
      _result.residence = residence;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory ResidenceDocModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidenceDocModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidenceDocModel clone() => ResidenceDocModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidenceDocModel copyWith(void Function(ResidenceDocModel) updates) => super.copyWith((message) => updates(message as ResidenceDocModel)) as ResidenceDocModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidenceDocModel create() => ResidenceDocModel._();
  ResidenceDocModel createEmptyInstance() => create();
  static $pb.PbList<ResidenceDocModel> createRepeated() => $pb.PbList<ResidenceDocModel>();
  @$core.pragma('dart2js:noInline')
  static ResidenceDocModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidenceDocModel>(create);
  static ResidenceDocModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get residenceDocId => $_getSZ(0);
  @$pb.TagNumber(1)
  set residenceDocId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidenceDocId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidenceDocId() => clearField(1);

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
  ResidenceRequest get residence => $_getN(4);
  @$pb.TagNumber(5)
  set residence(ResidenceRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasResidence() => $_has(4);
  @$pb.TagNumber(5)
  void clearResidence() => clearField(5);
  @$pb.TagNumber(5)
  ResidenceRequest ensureResidence() => $_ensure(4);

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

class ResidencesList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResidencesList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'residence'), createEmptyInstance: create)
    ..pc<ResidenceRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: ResidenceRequest.create)
    ..aOM<$1.ErrorModel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error', subBuilder: $1.ErrorModel.create)
    ..hasRequiredFields = false
  ;

  ResidencesList._() : super();
  factory ResidencesList({
    $core.Iterable<ResidenceRequest>? items,
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
  factory ResidencesList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResidencesList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResidencesList clone() => ResidencesList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResidencesList copyWith(void Function(ResidencesList) updates) => super.copyWith((message) => updates(message as ResidencesList)) as ResidencesList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResidencesList create() => ResidencesList._();
  ResidencesList createEmptyInstance() => create();
  static $pb.PbList<ResidencesList> createRepeated() => $pb.PbList<ResidencesList>();
  @$core.pragma('dart2js:noInline')
  static ResidencesList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResidencesList>(create);
  static ResidencesList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResidenceRequest> get items => $_getList(0);

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

