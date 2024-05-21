///
//  Generated code. Do not modify.
//  source: building.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'building.pb.dart' as $2;
import 'utility.pb.dart' as $1;
export 'building.pb.dart';

class RpcBuildingClient extends $grpc.Client {
  static final _$insertBuilding =
      $grpc.ClientMethod<$2.BuildingRequest, $2.BuildingResponse>(
          '/building.RpcBuilding/InsertBuilding',
          ($2.BuildingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BuildingResponse.fromBuffer(value));
  static final _$updateBuilding =
      $grpc.ClientMethod<$2.BuildingRequest, $2.BuildingResponse>(
          '/building.RpcBuilding/UpdateBuilding',
          ($2.BuildingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BuildingResponse.fromBuffer(value));
  static final _$deleteBuilding =
      $grpc.ClientMethod<$2.BuildingLookupModel, $2.BuildingResponse>(
          '/building.RpcBuilding/DeleteBuilding',
          ($2.BuildingLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BuildingResponse.fromBuffer(value));
  static final _$getBuildingById =
      $grpc.ClientMethod<$2.BuildingLookupModel, $2.BuildingRequest>(
          '/building.RpcBuilding/GetBuildingById',
          ($2.BuildingLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BuildingRequest.fromBuffer(value));
  static final _$getAllBuildings =
      $grpc.ClientMethod<$1.Empty, $2.BuildingsList>(
          '/building.RpcBuilding/GetAllBuildings',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.BuildingsList.fromBuffer(value));

  RpcBuildingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.BuildingResponse> insertBuilding(
      $2.BuildingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertBuilding, request, options: options);
  }

  $grpc.ResponseFuture<$2.BuildingResponse> updateBuilding(
      $2.BuildingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBuilding, request, options: options);
  }

  $grpc.ResponseFuture<$2.BuildingResponse> deleteBuilding(
      $2.BuildingLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBuilding, request, options: options);
  }

  $grpc.ResponseFuture<$2.BuildingRequest> getBuildingById(
      $2.BuildingLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBuildingById, request, options: options);
  }

  $grpc.ResponseFuture<$2.BuildingsList> getAllBuildings($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllBuildings, request, options: options);
  }
}

abstract class RpcBuildingServiceBase extends $grpc.Service {
  $core.String get $name => 'building.RpcBuilding';

  RpcBuildingServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.BuildingRequest, $2.BuildingResponse>(
        'InsertBuilding',
        insertBuilding_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BuildingRequest.fromBuffer(value),
        ($2.BuildingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BuildingRequest, $2.BuildingResponse>(
        'UpdateBuilding',
        updateBuilding_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BuildingRequest.fromBuffer(value),
        ($2.BuildingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BuildingLookupModel, $2.BuildingResponse>(
        'DeleteBuilding',
        deleteBuilding_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.BuildingLookupModel.fromBuffer(value),
        ($2.BuildingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BuildingLookupModel, $2.BuildingRequest>(
        'GetBuildingById',
        getBuildingById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.BuildingLookupModel.fromBuffer(value),
        ($2.BuildingRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.BuildingsList>(
        'GetAllBuildings',
        getAllBuildings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.BuildingsList value) => value.writeToBuffer()));
  }

  $async.Future<$2.BuildingResponse> insertBuilding_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BuildingRequest> request) async {
    return insertBuilding(call, await request);
  }

  $async.Future<$2.BuildingResponse> updateBuilding_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BuildingRequest> request) async {
    return updateBuilding(call, await request);
  }

  $async.Future<$2.BuildingResponse> deleteBuilding_Pre($grpc.ServiceCall call,
      $async.Future<$2.BuildingLookupModel> request) async {
    return deleteBuilding(call, await request);
  }

  $async.Future<$2.BuildingRequest> getBuildingById_Pre($grpc.ServiceCall call,
      $async.Future<$2.BuildingLookupModel> request) async {
    return getBuildingById(call, await request);
  }

  $async.Future<$2.BuildingsList> getAllBuildings_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAllBuildings(call, await request);
  }

  $async.Future<$2.BuildingResponse> insertBuilding(
      $grpc.ServiceCall call, $2.BuildingRequest request);
  $async.Future<$2.BuildingResponse> updateBuilding(
      $grpc.ServiceCall call, $2.BuildingRequest request);
  $async.Future<$2.BuildingResponse> deleteBuilding(
      $grpc.ServiceCall call, $2.BuildingLookupModel request);
  $async.Future<$2.BuildingRequest> getBuildingById(
      $grpc.ServiceCall call, $2.BuildingLookupModel request);
  $async.Future<$2.BuildingsList> getAllBuildings(
      $grpc.ServiceCall call, $1.Empty request);
}
