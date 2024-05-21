///
//  Generated code. Do not modify.
//  source: providerservice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'providerservice.pb.dart' as $2;
export 'providerservice.pb.dart';

class RpcSerProviderClient extends $grpc.Client {
  static final _$insertSerProvider =
      $grpc.ClientMethod<$2.SerProviderRequest, $2.SerProviderResponse>(
          '/providerservice.RpcSerProvider/InsertSerProvider',
          ($2.SerProviderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SerProviderResponse.fromBuffer(value));
  static final _$updateSerProvider =
      $grpc.ClientMethod<$2.SerProviderRequest, $2.SerProviderResponse>(
          '/providerservice.RpcSerProvider/UpdateSerProvider',
          ($2.SerProviderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SerProviderResponse.fromBuffer(value));
  static final _$deleteSerProvider =
      $grpc.ClientMethod<$2.SerProviderLookupModel, $2.SerProviderResponse>(
          '/providerservice.RpcSerProvider/DeleteSerProvider',
          ($2.SerProviderLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SerProviderResponse.fromBuffer(value));
  static final _$getSerProviderById =
      $grpc.ClientMethod<$2.SerProviderLookupModel, $2.SerProviderRequest>(
          '/providerservice.RpcSerProvider/GetSerProviderById',
          ($2.SerProviderLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SerProviderRequest.fromBuffer(value));
  static final _$getAllSerProviders =
      $grpc.ClientMethod<$2.ResSerProviderLookupModel, $2.SerProvidersList>(
          '/providerservice.RpcSerProvider/GetAllSerProviders',
          ($2.ResSerProviderLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SerProvidersList.fromBuffer(value));

  RpcSerProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.SerProviderResponse> insertSerProvider(
      $2.SerProviderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertSerProvider, request, options: options);
  }

  $grpc.ResponseFuture<$2.SerProviderResponse> updateSerProvider(
      $2.SerProviderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSerProvider, request, options: options);
  }

  $grpc.ResponseFuture<$2.SerProviderResponse> deleteSerProvider(
      $2.SerProviderLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSerProvider, request, options: options);
  }

  $grpc.ResponseFuture<$2.SerProviderRequest> getSerProviderById(
      $2.SerProviderLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSerProviderById, request, options: options);
  }

  $grpc.ResponseFuture<$2.SerProvidersList> getAllSerProviders(
      $2.ResSerProviderLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllSerProviders, request, options: options);
  }
}

abstract class RpcSerProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'providerservice.RpcSerProvider';

  RpcSerProviderServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.SerProviderRequest, $2.SerProviderResponse>(
            'InsertSerProvider',
            insertSerProvider_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SerProviderRequest.fromBuffer(value),
            ($2.SerProviderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SerProviderRequest, $2.SerProviderResponse>(
            'UpdateSerProvider',
            updateSerProvider_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SerProviderRequest.fromBuffer(value),
            ($2.SerProviderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SerProviderLookupModel, $2.SerProviderResponse>(
            'DeleteSerProvider',
            deleteSerProvider_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SerProviderLookupModel.fromBuffer(value),
            ($2.SerProviderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SerProviderLookupModel, $2.SerProviderRequest>(
            'GetSerProviderById',
            getSerProviderById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SerProviderLookupModel.fromBuffer(value),
            ($2.SerProviderRequest value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ResSerProviderLookupModel, $2.SerProvidersList>(
            'GetAllSerProviders',
            getAllSerProviders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ResSerProviderLookupModel.fromBuffer(value),
            ($2.SerProvidersList value) => value.writeToBuffer()));
  }

  $async.Future<$2.SerProviderResponse> insertSerProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SerProviderRequest> request) async {
    return insertSerProvider(call, await request);
  }

  $async.Future<$2.SerProviderResponse> updateSerProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SerProviderRequest> request) async {
    return updateSerProvider(call, await request);
  }

  $async.Future<$2.SerProviderResponse> deleteSerProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SerProviderLookupModel> request) async {
    return deleteSerProvider(call, await request);
  }

  $async.Future<$2.SerProviderRequest> getSerProviderById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SerProviderLookupModel> request) async {
    return getSerProviderById(call, await request);
  }

  $async.Future<$2.SerProvidersList> getAllSerProviders_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ResSerProviderLookupModel> request) async {
    return getAllSerProviders(call, await request);
  }

  $async.Future<$2.SerProviderResponse> insertSerProvider(
      $grpc.ServiceCall call, $2.SerProviderRequest request);
  $async.Future<$2.SerProviderResponse> updateSerProvider(
      $grpc.ServiceCall call, $2.SerProviderRequest request);
  $async.Future<$2.SerProviderResponse> deleteSerProvider(
      $grpc.ServiceCall call, $2.SerProviderLookupModel request);
  $async.Future<$2.SerProviderRequest> getSerProviderById(
      $grpc.ServiceCall call, $2.SerProviderLookupModel request);
  $async.Future<$2.SerProvidersList> getAllSerProviders(
      $grpc.ServiceCall call, $2.ResSerProviderLookupModel request);
}
