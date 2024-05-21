///
//  Generated code. Do not modify.
//  source: unit.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'unit.pb.dart' as $4;
import 'utility.pb.dart' as $1;
export 'unit.pb.dart';

class RpcUnitClient extends $grpc.Client {
  static final _$insertUnit =
      $grpc.ClientMethod<$4.UnitRequestList, $4.UnitResponse>(
          '/unit.RpcUnit/InsertUnit',
          ($4.UnitRequestList value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitResponse.fromBuffer(value));
  static final _$updateUnit =
      $grpc.ClientMethod<$4.UnitRequest, $4.UnitResponse>(
          '/unit.RpcUnit/UpdateUnit',
          ($4.UnitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitResponse.fromBuffer(value));
  static final _$deleteUnit =
      $grpc.ClientMethod<$4.UnitLookupModel, $4.UnitResponse>(
          '/unit.RpcUnit/DeleteUnit',
          ($4.UnitLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitResponse.fromBuffer(value));
  static final _$deleteAllUnit =
      $grpc.ClientMethod<$4.UnitListLookupModel, $4.UnitResponse>(
          '/unit.RpcUnit/DeleteAllUnit',
          ($4.UnitListLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitResponse.fromBuffer(value));
  static final _$getUnitById =
      $grpc.ClientMethod<$4.UnitLookupModel, $4.UnitRequest>(
          '/unit.RpcUnit/GetUnitById',
          ($4.UnitLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitRequest.fromBuffer(value));
  static final _$getAllUnits = $grpc.ClientMethod<$1.Empty, $4.UnitsList>(
      '/unit.RpcUnit/GetAllUnits',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UnitsList.fromBuffer(value));
  static final _$getUnitDocById =
      $grpc.ClientMethod<$4.UnitDocLookUpModel, $4.UnitDocModel>(
          '/unit.RpcUnit/GetUnitDocById',
          ($4.UnitDocLookUpModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitDocModel.fromBuffer(value));
  static final _$getUnitListById =
      $grpc.ClientMethod<$4.UnitListLookupModel, $4.UnitsList>(
          '/unit.RpcUnit/GetUnitListById',
          ($4.UnitListLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitsList.fromBuffer(value));
  static final _$getSoldUnitListById =
      $grpc.ClientMethod<$4.UnitListLookupModel, $4.UnitsList>(
          '/unit.RpcUnit/GetSoldUnitListById',
          ($4.UnitListLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitsList.fromBuffer(value));
  static final _$getResidentUnitListById =
      $grpc.ClientMethod<$4.ResidentUnitListLookupModel, $4.UnitsList>(
          '/unit.RpcUnit/GetResidentUnitListById',
          ($4.ResidentUnitListLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitsList.fromBuffer(value));
  static final _$getSoldResidentUnitListById =
      $grpc.ClientMethod<$4.ResidentUnitListLookupModel, $4.UnitsList>(
          '/unit.RpcUnit/GetSoldResidentUnitListById',
          ($4.ResidentUnitListLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitsList.fromBuffer(value));
  static final _$getResidentOwnerUnitListById =
      $grpc.ClientMethod<$4.ResidentUnitListOwnerLookupModel, $4.UnitsList>(
          '/unit.RpcUnit/GetResidentOwnerUnitListById',
          ($4.ResidentUnitListOwnerLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitsList.fromBuffer(value));
  static final _$updateTenantUnit =
      $grpc.ClientMethod<$4.UnitRequest, $4.UnitResponse>(
          '/unit.RpcUnit/UpdateTenantUnit',
          ($4.UnitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UnitResponse.fromBuffer(value));
  static final _$getOwnerAndTententUnitById =
      $grpc.ClientMethod<$4.UnitLookupModel, $4.OwnerTenantIfo>(
          '/unit.RpcUnit/GetOwnerAndTententUnitById',
          ($4.UnitLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.OwnerTenantIfo.fromBuffer(value));

  RpcUnitClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.UnitResponse> insertUnit($4.UnitRequestList request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertUnit, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitResponse> updateUnit($4.UnitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUnit, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitResponse> deleteUnit($4.UnitLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUnit, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitResponse> deleteAllUnit(
      $4.UnitListLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAllUnit, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitRequest> getUnitById($4.UnitLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUnitById, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitsList> getAllUnits($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllUnits, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitDocModel> getUnitDocById(
      $4.UnitDocLookUpModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUnitDocById, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitsList> getUnitListById(
      $4.UnitListLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUnitListById, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitsList> getSoldUnitListById(
      $4.UnitListLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSoldUnitListById, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnitsList> getResidentUnitListById(
      $4.ResidentUnitListLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResidentUnitListById, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.UnitsList> getSoldResidentUnitListById(
      $4.ResidentUnitListLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSoldResidentUnitListById, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.UnitsList> getResidentOwnerUnitListById(
      $4.ResidentUnitListOwnerLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResidentOwnerUnitListById, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.UnitResponse> updateTenantUnit($4.UnitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTenantUnit, request, options: options);
  }

  $grpc.ResponseFuture<$4.OwnerTenantIfo> getOwnerAndTententUnitById(
      $4.UnitLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOwnerAndTententUnitById, request,
        options: options);
  }
}

abstract class RpcUnitServiceBase extends $grpc.Service {
  $core.String get $name => 'unit.RpcUnit';

  RpcUnitServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.UnitRequestList, $4.UnitResponse>(
        'InsertUnit',
        insertUnit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UnitRequestList.fromBuffer(value),
        ($4.UnitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitRequest, $4.UnitResponse>(
        'UpdateUnit',
        updateUnit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UnitRequest.fromBuffer(value),
        ($4.UnitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitLookupModel, $4.UnitResponse>(
        'DeleteUnit',
        deleteUnit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UnitLookupModel.fromBuffer(value),
        ($4.UnitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitListLookupModel, $4.UnitResponse>(
        'DeleteAllUnit',
        deleteAllUnit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UnitListLookupModel.fromBuffer(value),
        ($4.UnitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitLookupModel, $4.UnitRequest>(
        'GetUnitById',
        getUnitById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UnitLookupModel.fromBuffer(value),
        ($4.UnitRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $4.UnitsList>(
        'GetAllUnits',
        getAllUnits_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($4.UnitsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitDocLookUpModel, $4.UnitDocModel>(
        'GetUnitDocById',
        getUnitDocById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UnitDocLookUpModel.fromBuffer(value),
        ($4.UnitDocModel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitListLookupModel, $4.UnitsList>(
        'GetUnitListById',
        getUnitListById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UnitListLookupModel.fromBuffer(value),
        ($4.UnitsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitListLookupModel, $4.UnitsList>(
        'GetSoldUnitListById',
        getSoldUnitListById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UnitListLookupModel.fromBuffer(value),
        ($4.UnitsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ResidentUnitListLookupModel, $4.UnitsList>(
            'GetResidentUnitListById',
            getResidentUnitListById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ResidentUnitListLookupModel.fromBuffer(value),
            ($4.UnitsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ResidentUnitListLookupModel, $4.UnitsList>(
            'GetSoldResidentUnitListById',
            getSoldResidentUnitListById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ResidentUnitListLookupModel.fromBuffer(value),
            ($4.UnitsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ResidentUnitListOwnerLookupModel, $4.UnitsList>(
            'GetResidentOwnerUnitListById',
            getResidentOwnerUnitListById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ResidentUnitListOwnerLookupModel.fromBuffer(value),
            ($4.UnitsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitRequest, $4.UnitResponse>(
        'UpdateTenantUnit',
        updateTenantUnit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UnitRequest.fromBuffer(value),
        ($4.UnitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnitLookupModel, $4.OwnerTenantIfo>(
        'GetOwnerAndTententUnitById',
        getOwnerAndTententUnitById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UnitLookupModel.fromBuffer(value),
        ($4.OwnerTenantIfo value) => value.writeToBuffer()));
  }

  $async.Future<$4.UnitResponse> insertUnit_Pre(
      $grpc.ServiceCall call, $async.Future<$4.UnitRequestList> request) async {
    return insertUnit(call, await request);
  }

  $async.Future<$4.UnitResponse> updateUnit_Pre(
      $grpc.ServiceCall call, $async.Future<$4.UnitRequest> request) async {
    return updateUnit(call, await request);
  }

  $async.Future<$4.UnitResponse> deleteUnit_Pre(
      $grpc.ServiceCall call, $async.Future<$4.UnitLookupModel> request) async {
    return deleteUnit(call, await request);
  }

  $async.Future<$4.UnitResponse> deleteAllUnit_Pre($grpc.ServiceCall call,
      $async.Future<$4.UnitListLookupModel> request) async {
    return deleteAllUnit(call, await request);
  }

  $async.Future<$4.UnitRequest> getUnitById_Pre(
      $grpc.ServiceCall call, $async.Future<$4.UnitLookupModel> request) async {
    return getUnitById(call, await request);
  }

  $async.Future<$4.UnitsList> getAllUnits_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAllUnits(call, await request);
  }

  $async.Future<$4.UnitDocModel> getUnitDocById_Pre($grpc.ServiceCall call,
      $async.Future<$4.UnitDocLookUpModel> request) async {
    return getUnitDocById(call, await request);
  }

  $async.Future<$4.UnitsList> getUnitListById_Pre($grpc.ServiceCall call,
      $async.Future<$4.UnitListLookupModel> request) async {
    return getUnitListById(call, await request);
  }

  $async.Future<$4.UnitsList> getSoldUnitListById_Pre($grpc.ServiceCall call,
      $async.Future<$4.UnitListLookupModel> request) async {
    return getSoldUnitListById(call, await request);
  }

  $async.Future<$4.UnitsList> getResidentUnitListById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ResidentUnitListLookupModel> request) async {
    return getResidentUnitListById(call, await request);
  }

  $async.Future<$4.UnitsList> getSoldResidentUnitListById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ResidentUnitListLookupModel> request) async {
    return getSoldResidentUnitListById(call, await request);
  }

  $async.Future<$4.UnitsList> getResidentOwnerUnitListById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ResidentUnitListOwnerLookupModel> request) async {
    return getResidentOwnerUnitListById(call, await request);
  }

  $async.Future<$4.UnitResponse> updateTenantUnit_Pre(
      $grpc.ServiceCall call, $async.Future<$4.UnitRequest> request) async {
    return updateTenantUnit(call, await request);
  }

  $async.Future<$4.OwnerTenantIfo> getOwnerAndTententUnitById_Pre(
      $grpc.ServiceCall call, $async.Future<$4.UnitLookupModel> request) async {
    return getOwnerAndTententUnitById(call, await request);
  }

  $async.Future<$4.UnitResponse> insertUnit(
      $grpc.ServiceCall call, $4.UnitRequestList request);
  $async.Future<$4.UnitResponse> updateUnit(
      $grpc.ServiceCall call, $4.UnitRequest request);
  $async.Future<$4.UnitResponse> deleteUnit(
      $grpc.ServiceCall call, $4.UnitLookupModel request);
  $async.Future<$4.UnitResponse> deleteAllUnit(
      $grpc.ServiceCall call, $4.UnitListLookupModel request);
  $async.Future<$4.UnitRequest> getUnitById(
      $grpc.ServiceCall call, $4.UnitLookupModel request);
  $async.Future<$4.UnitsList> getAllUnits(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$4.UnitDocModel> getUnitDocById(
      $grpc.ServiceCall call, $4.UnitDocLookUpModel request);
  $async.Future<$4.UnitsList> getUnitListById(
      $grpc.ServiceCall call, $4.UnitListLookupModel request);
  $async.Future<$4.UnitsList> getSoldUnitListById(
      $grpc.ServiceCall call, $4.UnitListLookupModel request);
  $async.Future<$4.UnitsList> getResidentUnitListById(
      $grpc.ServiceCall call, $4.ResidentUnitListLookupModel request);
  $async.Future<$4.UnitsList> getSoldResidentUnitListById(
      $grpc.ServiceCall call, $4.ResidentUnitListLookupModel request);
  $async.Future<$4.UnitsList> getResidentOwnerUnitListById(
      $grpc.ServiceCall call, $4.ResidentUnitListOwnerLookupModel request);
  $async.Future<$4.UnitResponse> updateTenantUnit(
      $grpc.ServiceCall call, $4.UnitRequest request);
  $async.Future<$4.OwnerTenantIfo> getOwnerAndTententUnitById(
      $grpc.ServiceCall call, $4.UnitLookupModel request);
}
