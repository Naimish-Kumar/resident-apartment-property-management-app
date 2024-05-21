///
//  Generated code. Do not modify.
//  source: inquiry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inquiry.pb.dart' as $0;
export 'inquiry.pb.dart';

class RpcInquiryClient extends $grpc.Client {
  static final _$insertInquiry =
      $grpc.ClientMethod<$0.InquiryRequest, $0.InquiryResponse>(
          '/inquiry.RpcInquiry/InsertInquiry',
          ($0.InquiryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InquiryResponse.fromBuffer(value));
  static final _$updateInquiry =
      $grpc.ClientMethod<$0.InquiryRequest, $0.InquiryResponse>(
          '/inquiry.RpcInquiry/UpdateInquiry',
          ($0.InquiryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InquiryResponse.fromBuffer(value));
  static final _$deleteInquiry =
      $grpc.ClientMethod<$0.InquiryLookupModel, $0.InquiryResponse>(
          '/inquiry.RpcInquiry/DeleteInquiry',
          ($0.InquiryLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InquiryResponse.fromBuffer(value));
  static final _$getInquiryById =
      $grpc.ClientMethod<$0.InquiryLookupModel, $0.InquiryRequest>(
          '/inquiry.RpcInquiry/GetInquiryById',
          ($0.InquiryLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.InquiryRequest.fromBuffer(value));
  static final _$getAllInquirys =
      $grpc.ClientMethod<$0.ResInquiryLookupModel, $0.InquirysList>(
          '/inquiry.RpcInquiry/GetAllInquirys',
          ($0.ResInquiryLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.InquirysList.fromBuffer(value));

  RpcInquiryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.InquiryResponse> insertInquiry(
      $0.InquiryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertInquiry, request, options: options);
  }

  $grpc.ResponseFuture<$0.InquiryResponse> updateInquiry(
      $0.InquiryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInquiry, request, options: options);
  }

  $grpc.ResponseFuture<$0.InquiryResponse> deleteInquiry(
      $0.InquiryLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInquiry, request, options: options);
  }

  $grpc.ResponseFuture<$0.InquiryRequest> getInquiryById(
      $0.InquiryLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInquiryById, request, options: options);
  }

  $grpc.ResponseFuture<$0.InquirysList> getAllInquirys(
      $0.ResInquiryLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllInquirys, request, options: options);
  }
}

abstract class RpcInquiryServiceBase extends $grpc.Service {
  $core.String get $name => 'inquiry.RpcInquiry';

  RpcInquiryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InquiryRequest, $0.InquiryResponse>(
        'InsertInquiry',
        insertInquiry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InquiryRequest.fromBuffer(value),
        ($0.InquiryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InquiryRequest, $0.InquiryResponse>(
        'UpdateInquiry',
        updateInquiry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InquiryRequest.fromBuffer(value),
        ($0.InquiryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InquiryLookupModel, $0.InquiryResponse>(
        'DeleteInquiry',
        deleteInquiry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.InquiryLookupModel.fromBuffer(value),
        ($0.InquiryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InquiryLookupModel, $0.InquiryRequest>(
        'GetInquiryById',
        getInquiryById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.InquiryLookupModel.fromBuffer(value),
        ($0.InquiryRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResInquiryLookupModel, $0.InquirysList>(
        'GetAllInquirys',
        getAllInquirys_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResInquiryLookupModel.fromBuffer(value),
        ($0.InquirysList value) => value.writeToBuffer()));
  }

  $async.Future<$0.InquiryResponse> insertInquiry_Pre(
      $grpc.ServiceCall call, $async.Future<$0.InquiryRequest> request) async {
    return insertInquiry(call, await request);
  }

  $async.Future<$0.InquiryResponse> updateInquiry_Pre(
      $grpc.ServiceCall call, $async.Future<$0.InquiryRequest> request) async {
    return updateInquiry(call, await request);
  }

  $async.Future<$0.InquiryResponse> deleteInquiry_Pre($grpc.ServiceCall call,
      $async.Future<$0.InquiryLookupModel> request) async {
    return deleteInquiry(call, await request);
  }

  $async.Future<$0.InquiryRequest> getInquiryById_Pre($grpc.ServiceCall call,
      $async.Future<$0.InquiryLookupModel> request) async {
    return getInquiryById(call, await request);
  }

  $async.Future<$0.InquirysList> getAllInquirys_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResInquiryLookupModel> request) async {
    return getAllInquirys(call, await request);
  }

  $async.Future<$0.InquiryResponse> insertInquiry(
      $grpc.ServiceCall call, $0.InquiryRequest request);
  $async.Future<$0.InquiryResponse> updateInquiry(
      $grpc.ServiceCall call, $0.InquiryRequest request);
  $async.Future<$0.InquiryResponse> deleteInquiry(
      $grpc.ServiceCall call, $0.InquiryLookupModel request);
  $async.Future<$0.InquiryRequest> getInquiryById(
      $grpc.ServiceCall call, $0.InquiryLookupModel request);
  $async.Future<$0.InquirysList> getAllInquirys(
      $grpc.ServiceCall call, $0.ResInquiryLookupModel request);
}
