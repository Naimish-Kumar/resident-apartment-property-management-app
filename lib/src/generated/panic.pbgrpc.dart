///
//  Generated code. Do not modify.
//  source: panic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'panic.pb.dart' as $0;
export 'panic.pb.dart';

class RpcPanicClient extends $grpc.Client {
  static final _$insertPanic =
      $grpc.ClientMethod<$0.PanicRequest, $0.PanicResponse>(
          '/panic.RpcPanic/InsertPanic',
          ($0.PanicRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PanicResponse.fromBuffer(value));
  static final _$deletePanic =
      $grpc.ClientMethod<$0.PanicLookupModel, $0.PanicResponse>(
          '/panic.RpcPanic/DeletePanic',
          ($0.PanicLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PanicResponse.fromBuffer(value));
  static final _$getAllPanics =
      $grpc.ClientMethod<$0.PanicLookupModel, $0.PanicsList>(
          '/panic.RpcPanic/GetAllPanics',
          ($0.PanicLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PanicsList.fromBuffer(value));

  RpcPanicClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PanicResponse> insertPanic($0.PanicRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertPanic, request, options: options);
  }

  $grpc.ResponseFuture<$0.PanicResponse> deletePanic(
      $0.PanicLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePanic, request, options: options);
  }

  $grpc.ResponseFuture<$0.PanicsList> getAllPanics($0.PanicLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllPanics, request, options: options);
  }
}

abstract class RpcPanicServiceBase extends $grpc.Service {
  $core.String get $name => 'panic.RpcPanic';

  RpcPanicServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PanicRequest, $0.PanicResponse>(
        'InsertPanic',
        insertPanic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PanicRequest.fromBuffer(value),
        ($0.PanicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PanicLookupModel, $0.PanicResponse>(
        'DeletePanic',
        deletePanic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PanicLookupModel.fromBuffer(value),
        ($0.PanicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PanicLookupModel, $0.PanicsList>(
        'GetAllPanics',
        getAllPanics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PanicLookupModel.fromBuffer(value),
        ($0.PanicsList value) => value.writeToBuffer()));
  }

  $async.Future<$0.PanicResponse> insertPanic_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PanicRequest> request) async {
    return insertPanic(call, await request);
  }

  $async.Future<$0.PanicResponse> deletePanic_Pre($grpc.ServiceCall call,
      $async.Future<$0.PanicLookupModel> request) async {
    return deletePanic(call, await request);
  }

  $async.Future<$0.PanicsList> getAllPanics_Pre($grpc.ServiceCall call,
      $async.Future<$0.PanicLookupModel> request) async {
    return getAllPanics(call, await request);
  }

  $async.Future<$0.PanicResponse> insertPanic(
      $grpc.ServiceCall call, $0.PanicRequest request);
  $async.Future<$0.PanicResponse> deletePanic(
      $grpc.ServiceCall call, $0.PanicLookupModel request);
  $async.Future<$0.PanicsList> getAllPanics(
      $grpc.ServiceCall call, $0.PanicLookupModel request);
}
