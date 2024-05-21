///
//  Generated code. Do not modify.
//  source: docbanner.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'docbanner.pb.dart' as $0;
export 'docbanner.pb.dart';

class RpcDocBannerClient extends $grpc.Client {
  static final _$insertDocBanner =
      $grpc.ClientMethod<$0.DocBannerRequest, $0.DocBannerResponse>(
          '/docbanner.RpcDocBanner/InsertDocBanner',
          ($0.DocBannerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DocBannerResponse.fromBuffer(value));
  static final _$updateDocBanner =
      $grpc.ClientMethod<$0.DocBannerRequest, $0.DocBannerResponse>(
          '/docbanner.RpcDocBanner/UpdateDocBanner',
          ($0.DocBannerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DocBannerResponse.fromBuffer(value));
  static final _$deleteDocBanner =
      $grpc.ClientMethod<$0.DocBannerLookupModel, $0.DocBannerResponse>(
          '/docbanner.RpcDocBanner/DeleteDocBanner',
          ($0.DocBannerLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DocBannerResponse.fromBuffer(value));
  static final _$getDocBannerById =
      $grpc.ClientMethod<$0.DocBannerLookupModel, $0.DocBannerRequest>(
          '/docbanner.RpcDocBanner/GetDocBannerById',
          ($0.DocBannerLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DocBannerRequest.fromBuffer(value));
  static final _$getAllDocBanners =
      $grpc.ClientMethod<$0.ResDocBannerLookupModel, $0.DocBannersList>(
          '/docbanner.RpcDocBanner/GetAllDocBanners',
          ($0.ResDocBannerLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DocBannersList.fromBuffer(value));
  static final _$getDocBannerDocById =
      $grpc.ClientMethod<$0.DocBannerDocLookupModel, $0.DocBannerDocsModel>(
          '/docbanner.RpcDocBanner/GetDocBannerDocById',
          ($0.DocBannerDocLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DocBannerDocsModel.fromBuffer(value));

  RpcDocBannerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.DocBannerResponse> insertDocBanner(
      $0.DocBannerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertDocBanner, request, options: options);
  }

  $grpc.ResponseFuture<$0.DocBannerResponse> updateDocBanner(
      $0.DocBannerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDocBanner, request, options: options);
  }

  $grpc.ResponseFuture<$0.DocBannerResponse> deleteDocBanner(
      $0.DocBannerLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDocBanner, request, options: options);
  }

  $grpc.ResponseFuture<$0.DocBannerRequest> getDocBannerById(
      $0.DocBannerLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDocBannerById, request, options: options);
  }

  $grpc.ResponseFuture<$0.DocBannersList> getAllDocBanners(
      $0.ResDocBannerLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllDocBanners, request, options: options);
  }

  $grpc.ResponseFuture<$0.DocBannerDocsModel> getDocBannerDocById(
      $0.DocBannerDocLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDocBannerDocById, request, options: options);
  }
}

abstract class RpcDocBannerServiceBase extends $grpc.Service {
  $core.String get $name => 'docbanner.RpcDocBanner';

  RpcDocBannerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DocBannerRequest, $0.DocBannerResponse>(
        'InsertDocBanner',
        insertDocBanner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DocBannerRequest.fromBuffer(value),
        ($0.DocBannerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DocBannerRequest, $0.DocBannerResponse>(
        'UpdateDocBanner',
        updateDocBanner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DocBannerRequest.fromBuffer(value),
        ($0.DocBannerResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DocBannerLookupModel, $0.DocBannerResponse>(
            'DeleteDocBanner',
            deleteDocBanner_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DocBannerLookupModel.fromBuffer(value),
            ($0.DocBannerResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DocBannerLookupModel, $0.DocBannerRequest>(
            'GetDocBannerById',
            getDocBannerById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DocBannerLookupModel.fromBuffer(value),
            ($0.DocBannerRequest value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResDocBannerLookupModel, $0.DocBannersList>(
            'GetAllDocBanners',
            getAllDocBanners_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResDocBannerLookupModel.fromBuffer(value),
            ($0.DocBannersList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DocBannerDocLookupModel, $0.DocBannerDocsModel>(
            'GetDocBannerDocById',
            getDocBannerDocById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DocBannerDocLookupModel.fromBuffer(value),
            ($0.DocBannerDocsModel value) => value.writeToBuffer()));
  }

  $async.Future<$0.DocBannerResponse> insertDocBanner_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DocBannerRequest> request) async {
    return insertDocBanner(call, await request);
  }

  $async.Future<$0.DocBannerResponse> updateDocBanner_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DocBannerRequest> request) async {
    return updateDocBanner(call, await request);
  }

  $async.Future<$0.DocBannerResponse> deleteDocBanner_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DocBannerLookupModel> request) async {
    return deleteDocBanner(call, await request);
  }

  $async.Future<$0.DocBannerRequest> getDocBannerById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DocBannerLookupModel> request) async {
    return getDocBannerById(call, await request);
  }

  $async.Future<$0.DocBannersList> getAllDocBanners_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResDocBannerLookupModel> request) async {
    return getAllDocBanners(call, await request);
  }

  $async.Future<$0.DocBannerDocsModel> getDocBannerDocById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DocBannerDocLookupModel> request) async {
    return getDocBannerDocById(call, await request);
  }

  $async.Future<$0.DocBannerResponse> insertDocBanner(
      $grpc.ServiceCall call, $0.DocBannerRequest request);
  $async.Future<$0.DocBannerResponse> updateDocBanner(
      $grpc.ServiceCall call, $0.DocBannerRequest request);
  $async.Future<$0.DocBannerResponse> deleteDocBanner(
      $grpc.ServiceCall call, $0.DocBannerLookupModel request);
  $async.Future<$0.DocBannerRequest> getDocBannerById(
      $grpc.ServiceCall call, $0.DocBannerLookupModel request);
  $async.Future<$0.DocBannersList> getAllDocBanners(
      $grpc.ServiceCall call, $0.ResDocBannerLookupModel request);
  $async.Future<$0.DocBannerDocsModel> getDocBannerDocById(
      $grpc.ServiceCall call, $0.DocBannerDocLookupModel request);
}
