///
//  Generated code. Do not modify.
//  source: residence.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'residence.pb.dart' as $0;
import 'utility.pb.dart' as $1;
export 'residence.pb.dart';

class RpcResidenceClient extends $grpc.Client {
  static final _$insertResidence =
      $grpc.ClientMethod<$0.ResidenceRequest, $0.ResidenceResponse>(
          '/residence.RpcResidence/InsertResidence',
          ($0.ResidenceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResidenceResponse.fromBuffer(value));
  static final _$updateResidence =
      $grpc.ClientMethod<$0.ResidenceRequest, $0.ResidenceResponse>(
          '/residence.RpcResidence/UpdateResidence',
          ($0.ResidenceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResidenceResponse.fromBuffer(value));
  static final _$deleteResidence =
      $grpc.ClientMethod<$0.ResidenceLookupModel, $0.ResidenceResponse>(
          '/residence.RpcResidence/DeleteResidence',
          ($0.ResidenceLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResidenceResponse.fromBuffer(value));
  static final _$getResidenceById =
      $grpc.ClientMethod<$0.ResidenceLookupModel, $0.ResidenceRequest>(
          '/residence.RpcResidence/GetResidenceById',
          ($0.ResidenceLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResidenceRequest.fromBuffer(value));
  static final _$getAllResidences =
      $grpc.ClientMethod<$1.Empty, $0.ResidencesList>(
          '/residence.RpcResidence/GetAllResidences',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ResidencesList.fromBuffer(value));
  static final _$getResidenceAvailableParkingListById =
      $grpc.ClientMethod<$0.ResidenceLookupModel, $0.ResidencesParkingList>(
          '/residence.RpcResidence/GetResidenceAvailableParkingListById',
          ($0.ResidenceLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResidencesParkingList.fromBuffer(value));

  RpcResidenceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResidenceResponse> insertResidence(
      $0.ResidenceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertResidence, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResidenceResponse> updateResidence(
      $0.ResidenceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateResidence, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResidenceResponse> deleteResidence(
      $0.ResidenceLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResidence, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResidenceRequest> getResidenceById(
      $0.ResidenceLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResidenceById, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResidencesList> getAllResidences($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllResidences, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResidencesParkingList>
      getResidenceAvailableParkingListById($0.ResidenceLookupModel request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResidenceAvailableParkingListById, request,
        options: options);
  }
}

abstract class RpcResidenceServiceBase extends $grpc.Service {
  $core.String get $name => 'residence.RpcResidence';

  RpcResidenceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ResidenceRequest, $0.ResidenceResponse>(
        'InsertResidence',
        insertResidence_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResidenceRequest.fromBuffer(value),
        ($0.ResidenceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResidenceRequest, $0.ResidenceResponse>(
        'UpdateResidence',
        updateResidence_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResidenceRequest.fromBuffer(value),
        ($0.ResidenceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResidenceLookupModel, $0.ResidenceResponse>(
            'DeleteResidence',
            deleteResidence_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResidenceLookupModel.fromBuffer(value),
            ($0.ResidenceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResidenceLookupModel, $0.ResidenceRequest>(
            'GetResidenceById',
            getResidenceById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResidenceLookupModel.fromBuffer(value),
            ($0.ResidenceRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ResidencesList>(
        'GetAllResidences',
        getAllResidences_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ResidencesList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResidenceLookupModel, $0.ResidencesParkingList>(
            'GetResidenceAvailableParkingListById',
            getResidenceAvailableParkingListById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResidenceLookupModel.fromBuffer(value),
            ($0.ResidencesParkingList value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResidenceResponse> insertResidence_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResidenceRequest> request) async {
    return insertResidence(call, await request);
  }

  $async.Future<$0.ResidenceResponse> updateResidence_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResidenceRequest> request) async {
    return updateResidence(call, await request);
  }

  $async.Future<$0.ResidenceResponse> deleteResidence_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResidenceLookupModel> request) async {
    return deleteResidence(call, await request);
  }

  $async.Future<$0.ResidenceRequest> getResidenceById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResidenceLookupModel> request) async {
    return getResidenceById(call, await request);
  }

  $async.Future<$0.ResidencesList> getAllResidences_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAllResidences(call, await request);
  }

  $async.Future<$0.ResidencesParkingList>
      getResidenceAvailableParkingListById_Pre($grpc.ServiceCall call,
          $async.Future<$0.ResidenceLookupModel> request) async {
    return getResidenceAvailableParkingListById(call, await request);
  }

  $async.Future<$0.ResidenceResponse> insertResidence(
      $grpc.ServiceCall call, $0.ResidenceRequest request);
  $async.Future<$0.ResidenceResponse> updateResidence(
      $grpc.ServiceCall call, $0.ResidenceRequest request);
  $async.Future<$0.ResidenceResponse> deleteResidence(
      $grpc.ServiceCall call, $0.ResidenceLookupModel request);
  $async.Future<$0.ResidenceRequest> getResidenceById(
      $grpc.ServiceCall call, $0.ResidenceLookupModel request);
  $async.Future<$0.ResidencesList> getAllResidences(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.ResidencesParkingList> getResidenceAvailableParkingListById(
      $grpc.ServiceCall call, $0.ResidenceLookupModel request);
}
