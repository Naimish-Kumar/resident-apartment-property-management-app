///
//  Generated code. Do not modify.
//  source: commitee.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'commitee.pb.dart' as $0;
export 'commitee.pb.dart';

class RpcCommiteeClient extends $grpc.Client {
  static final _$insertCommitee =
      $grpc.ClientMethod<$0.CommiteeRequest, $0.CommiteeResponse>(
          '/commitee.RpcCommitee/InsertCommitee',
          ($0.CommiteeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CommiteeResponse.fromBuffer(value));
  static final _$updateCommitee =
      $grpc.ClientMethod<$0.CommiteeRequest, $0.CommiteeResponse>(
          '/commitee.RpcCommitee/UpdateCommitee',
          ($0.CommiteeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CommiteeResponse.fromBuffer(value));
  static final _$deleteCommitee =
      $grpc.ClientMethod<$0.CommiteeLookupModel, $0.CommiteeResponse>(
          '/commitee.RpcCommitee/DeleteCommitee',
          ($0.CommiteeLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CommiteeResponse.fromBuffer(value));
  static final _$getCommiteeById =
      $grpc.ClientMethod<$0.CommiteeLookupModel, $0.CommiteeRequest>(
          '/commitee.RpcCommitee/GetCommiteeById',
          ($0.CommiteeLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CommiteeRequest.fromBuffer(value));
  static final _$getAllCommitees =
      $grpc.ClientMethod<$0.ResCommiteeLookupModel, $0.CommiteesList>(
          '/commitee.RpcCommitee/GetAllCommitees',
          ($0.ResCommiteeLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommiteesList.fromBuffer(value));

  RpcCommiteeClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CommiteeResponse> insertCommitee(
      $0.CommiteeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertCommitee, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommiteeResponse> updateCommitee(
      $0.CommiteeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCommitee, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommiteeResponse> deleteCommitee(
      $0.CommiteeLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCommitee, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommiteeRequest> getCommiteeById(
      $0.CommiteeLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCommiteeById, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommiteesList> getAllCommitees(
      $0.ResCommiteeLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCommitees, request, options: options);
  }
}

abstract class RpcCommiteeServiceBase extends $grpc.Service {
  $core.String get $name => 'commitee.RpcCommitee';

  RpcCommiteeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CommiteeRequest, $0.CommiteeResponse>(
        'InsertCommitee',
        insertCommitee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommiteeRequest.fromBuffer(value),
        ($0.CommiteeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommiteeRequest, $0.CommiteeResponse>(
        'UpdateCommitee',
        updateCommitee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommiteeRequest.fromBuffer(value),
        ($0.CommiteeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommiteeLookupModel, $0.CommiteeResponse>(
        'DeleteCommitee',
        deleteCommitee_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CommiteeLookupModel.fromBuffer(value),
        ($0.CommiteeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommiteeLookupModel, $0.CommiteeRequest>(
        'GetCommiteeById',
        getCommiteeById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CommiteeLookupModel.fromBuffer(value),
        ($0.CommiteeRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResCommiteeLookupModel, $0.CommiteesList>(
        'GetAllCommitees',
        getAllCommitees_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResCommiteeLookupModel.fromBuffer(value),
        ($0.CommiteesList value) => value.writeToBuffer()));
  }

  $async.Future<$0.CommiteeResponse> insertCommitee_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommiteeRequest> request) async {
    return insertCommitee(call, await request);
  }

  $async.Future<$0.CommiteeResponse> updateCommitee_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommiteeRequest> request) async {
    return updateCommitee(call, await request);
  }

  $async.Future<$0.CommiteeResponse> deleteCommitee_Pre($grpc.ServiceCall call,
      $async.Future<$0.CommiteeLookupModel> request) async {
    return deleteCommitee(call, await request);
  }

  $async.Future<$0.CommiteeRequest> getCommiteeById_Pre($grpc.ServiceCall call,
      $async.Future<$0.CommiteeLookupModel> request) async {
    return getCommiteeById(call, await request);
  }

  $async.Future<$0.CommiteesList> getAllCommitees_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResCommiteeLookupModel> request) async {
    return getAllCommitees(call, await request);
  }

  $async.Future<$0.CommiteeResponse> insertCommitee(
      $grpc.ServiceCall call, $0.CommiteeRequest request);
  $async.Future<$0.CommiteeResponse> updateCommitee(
      $grpc.ServiceCall call, $0.CommiteeRequest request);
  $async.Future<$0.CommiteeResponse> deleteCommitee(
      $grpc.ServiceCall call, $0.CommiteeLookupModel request);
  $async.Future<$0.CommiteeRequest> getCommiteeById(
      $grpc.ServiceCall call, $0.CommiteeLookupModel request);
  $async.Future<$0.CommiteesList> getAllCommitees(
      $grpc.ServiceCall call, $0.ResCommiteeLookupModel request);
}
