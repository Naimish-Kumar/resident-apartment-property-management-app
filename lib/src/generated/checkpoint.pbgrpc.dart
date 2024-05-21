///
//  Generated code. Do not modify.
//  source: checkpoint.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'checkpoint.pb.dart' as $2;
export 'checkpoint.pb.dart';

class RpcCheckpointClient extends $grpc.Client {
  static final _$checkpointVisit =
      $grpc.ClientMethod<$2.CheckpointVisitRequest, $2.CheckpointResponse>(
          '/checkpoint.RpcCheckpoint/CheckpointVisit',
          ($2.CheckpointVisitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CheckpointResponse.fromBuffer(value));
  static final _$insertCheckpoint =
      $grpc.ClientMethod<$2.CheckpointRequest, $2.CheckpointResponse>(
          '/checkpoint.RpcCheckpoint/InsertCheckpoint',
          ($2.CheckpointRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CheckpointResponse.fromBuffer(value));
  static final _$updateCheckpoint =
      $grpc.ClientMethod<$2.CheckpointRequest, $2.CheckpointResponse>(
          '/checkpoint.RpcCheckpoint/UpdateCheckpoint',
          ($2.CheckpointRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CheckpointResponse.fromBuffer(value));
  static final _$deleteCheckpoint =
      $grpc.ClientMethod<$2.CheckpointLookupModel, $2.CheckpointResponse>(
          '/checkpoint.RpcCheckpoint/DeleteCheckpoint',
          ($2.CheckpointLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CheckpointResponse.fromBuffer(value));
  static final _$getCheckpointById =
      $grpc.ClientMethod<$2.CheckpointLookupModel, $2.CheckpointRequest>(
          '/checkpoint.RpcCheckpoint/GetCheckpointById',
          ($2.CheckpointLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CheckpointRequest.fromBuffer(value));
  static final _$getAllCheckpoints =
      $grpc.ClientMethod<$2.ResCheckpointLookupModel, $2.CheckpointsList>(
          '/checkpoint.RpcCheckpoint/GetAllCheckpoints',
          ($2.ResCheckpointLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CheckpointsList.fromBuffer(value));

  RpcCheckpointClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CheckpointResponse> checkpointVisit(
      $2.CheckpointVisitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkpointVisit, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckpointResponse> insertCheckpoint(
      $2.CheckpointRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertCheckpoint, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckpointResponse> updateCheckpoint(
      $2.CheckpointRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCheckpoint, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckpointResponse> deleteCheckpoint(
      $2.CheckpointLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCheckpoint, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckpointRequest> getCheckpointById(
      $2.CheckpointLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCheckpointById, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckpointsList> getAllCheckpoints(
      $2.ResCheckpointLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCheckpoints, request, options: options);
  }
}

abstract class RpcCheckpointServiceBase extends $grpc.Service {
  $core.String get $name => 'checkpoint.RpcCheckpoint';

  RpcCheckpointServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.CheckpointVisitRequest, $2.CheckpointResponse>(
            'CheckpointVisit',
            checkpointVisit_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CheckpointVisitRequest.fromBuffer(value),
            ($2.CheckpointResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CheckpointRequest, $2.CheckpointResponse>(
        'InsertCheckpoint',
        insertCheckpoint_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CheckpointRequest.fromBuffer(value),
        ($2.CheckpointResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CheckpointRequest, $2.CheckpointResponse>(
        'UpdateCheckpoint',
        updateCheckpoint_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CheckpointRequest.fromBuffer(value),
        ($2.CheckpointResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.CheckpointLookupModel, $2.CheckpointResponse>(
            'DeleteCheckpoint',
            deleteCheckpoint_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CheckpointLookupModel.fromBuffer(value),
            ($2.CheckpointResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.CheckpointLookupModel, $2.CheckpointRequest>(
            'GetCheckpointById',
            getCheckpointById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CheckpointLookupModel.fromBuffer(value),
            ($2.CheckpointRequest value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ResCheckpointLookupModel, $2.CheckpointsList>(
            'GetAllCheckpoints',
            getAllCheckpoints_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ResCheckpointLookupModel.fromBuffer(value),
            ($2.CheckpointsList value) => value.writeToBuffer()));
  }

  $async.Future<$2.CheckpointResponse> checkpointVisit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CheckpointVisitRequest> request) async {
    return checkpointVisit(call, await request);
  }

  $async.Future<$2.CheckpointResponse> insertCheckpoint_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CheckpointRequest> request) async {
    return insertCheckpoint(call, await request);
  }

  $async.Future<$2.CheckpointResponse> updateCheckpoint_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CheckpointRequest> request) async {
    return updateCheckpoint(call, await request);
  }

  $async.Future<$2.CheckpointResponse> deleteCheckpoint_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CheckpointLookupModel> request) async {
    return deleteCheckpoint(call, await request);
  }

  $async.Future<$2.CheckpointRequest> getCheckpointById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CheckpointLookupModel> request) async {
    return getCheckpointById(call, await request);
  }

  $async.Future<$2.CheckpointsList> getAllCheckpoints_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ResCheckpointLookupModel> request) async {
    return getAllCheckpoints(call, await request);
  }

  $async.Future<$2.CheckpointResponse> checkpointVisit(
      $grpc.ServiceCall call, $2.CheckpointVisitRequest request);
  $async.Future<$2.CheckpointResponse> insertCheckpoint(
      $grpc.ServiceCall call, $2.CheckpointRequest request);
  $async.Future<$2.CheckpointResponse> updateCheckpoint(
      $grpc.ServiceCall call, $2.CheckpointRequest request);
  $async.Future<$2.CheckpointResponse> deleteCheckpoint(
      $grpc.ServiceCall call, $2.CheckpointLookupModel request);
  $async.Future<$2.CheckpointRequest> getCheckpointById(
      $grpc.ServiceCall call, $2.CheckpointLookupModel request);
  $async.Future<$2.CheckpointsList> getAllCheckpoints(
      $grpc.ServiceCall call, $2.ResCheckpointLookupModel request);
}
