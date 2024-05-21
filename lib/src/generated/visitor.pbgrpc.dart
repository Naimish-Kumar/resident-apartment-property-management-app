///
//  Generated code. Do not modify.
//  source: visitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'visitor.pb.dart' as $5;
export 'visitor.pb.dart';

class RpcVisitorClient extends $grpc.Client {
  static final _$insertVisitor =
      $grpc.ClientMethod<$5.VisitorRequest, $5.VisitorResponse>(
          '/visitor.RpcVisitor/InsertVisitor',
          ($5.VisitorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.VisitorResponse.fromBuffer(value));
  static final _$updateVisitor =
      $grpc.ClientMethod<$5.VisitorRequest, $5.VisitorResponse>(
          '/visitor.RpcVisitor/UpdateVisitor',
          ($5.VisitorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.VisitorResponse.fromBuffer(value));
  static final _$guardUpdateVisitor =
      $grpc.ClientMethod<$5.VisitorRequest, $5.VisitorResponse>(
          '/visitor.RpcVisitor/GuardUpdateVisitor',
          ($5.VisitorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.VisitorResponse.fromBuffer(value));
  static final _$deleteVisitor =
      $grpc.ClientMethod<$5.VisitorLookupModel, $5.VisitorResponse>(
          '/visitor.RpcVisitor/DeleteVisitor',
          ($5.VisitorLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.VisitorResponse.fromBuffer(value));
  static final _$getVisitorById =
      $grpc.ClientMethod<$5.VisitorLookupModel, $5.VisitorRequest>(
          '/visitor.RpcVisitor/GetVisitorById',
          ($5.VisitorLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.VisitorRequest.fromBuffer(value));
  static final _$getAllVisitors =
      $grpc.ClientMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
          '/visitor.RpcVisitor/GetAllVisitors',
          ($5.ResidenceVisitorLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.VisitorsList.fromBuffer(value));
  static final _$getAllCheckInVisitors =
      $grpc.ClientMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
          '/visitor.RpcVisitor/GetAllCheckInVisitors',
          ($5.ResidenceVisitorLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.VisitorsList.fromBuffer(value));
  static final _$getAllCheckOutVisitors =
      $grpc.ClientMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
          '/visitor.RpcVisitor/GetAllCheckOutVisitors',
          ($5.ResidenceVisitorLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.VisitorsList.fromBuffer(value));
  static final _$getAllVisitorsByUserId =
      $grpc.ClientMethod<$5.VisitorRequest, $5.VisitorsList>(
          '/visitor.RpcVisitor/GetAllVisitorsByUserId',
          ($5.VisitorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.VisitorsList.fromBuffer(value));
  static final _$userInsertVisitor =
      $grpc.ClientMethod<$5.VisitorRequest, $5.VisitorResponse>(
          '/visitor.RpcVisitor/UserInsertVisitor',
          ($5.VisitorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.VisitorResponse.fromBuffer(value));
  static final _$getAllOvernightParkingVisitors =
      $grpc.ClientMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
          '/visitor.RpcVisitor/GetAllOvernightParkingVisitors',
          ($5.ResidenceVisitorLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.VisitorsList.fromBuffer(value));

  RpcVisitorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.VisitorResponse> insertVisitor(
      $5.VisitorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertVisitor, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorResponse> updateVisitor(
      $5.VisitorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVisitor, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorResponse> guardUpdateVisitor(
      $5.VisitorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$guardUpdateVisitor, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorResponse> deleteVisitor(
      $5.VisitorLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteVisitor, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorRequest> getVisitorById(
      $5.VisitorLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVisitorById, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorsList> getAllVisitors(
      $5.ResidenceVisitorLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllVisitors, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorsList> getAllCheckInVisitors(
      $5.ResidenceVisitorLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCheckInVisitors, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorsList> getAllCheckOutVisitors(
      $5.ResidenceVisitorLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCheckOutVisitors, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.VisitorsList> getAllVisitorsByUserId(
      $5.VisitorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllVisitorsByUserId, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.VisitorResponse> userInsertVisitor(
      $5.VisitorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userInsertVisitor, request, options: options);
  }

  $grpc.ResponseFuture<$5.VisitorsList> getAllOvernightParkingVisitors(
      $5.ResidenceVisitorLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllOvernightParkingVisitors, request,
        options: options);
  }
}

abstract class RpcVisitorServiceBase extends $grpc.Service {
  $core.String get $name => 'visitor.RpcVisitor';

  RpcVisitorServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.VisitorRequest, $5.VisitorResponse>(
        'InsertVisitor',
        insertVisitor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.VisitorRequest.fromBuffer(value),
        ($5.VisitorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.VisitorRequest, $5.VisitorResponse>(
        'UpdateVisitor',
        updateVisitor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.VisitorRequest.fromBuffer(value),
        ($5.VisitorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.VisitorRequest, $5.VisitorResponse>(
        'GuardUpdateVisitor',
        guardUpdateVisitor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.VisitorRequest.fromBuffer(value),
        ($5.VisitorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.VisitorLookupModel, $5.VisitorResponse>(
        'DeleteVisitor',
        deleteVisitor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.VisitorLookupModel.fromBuffer(value),
        ($5.VisitorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.VisitorLookupModel, $5.VisitorRequest>(
        'GetVisitorById',
        getVisitorById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.VisitorLookupModel.fromBuffer(value),
        ($5.VisitorRequest value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
            'GetAllVisitors',
            getAllVisitors_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceVisitorLookupModel.fromBuffer(value),
            ($5.VisitorsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
            'GetAllCheckInVisitors',
            getAllCheckInVisitors_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceVisitorLookupModel.fromBuffer(value),
            ($5.VisitorsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
            'GetAllCheckOutVisitors',
            getAllCheckOutVisitors_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceVisitorLookupModel.fromBuffer(value),
            ($5.VisitorsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.VisitorRequest, $5.VisitorsList>(
        'GetAllVisitorsByUserId',
        getAllVisitorsByUserId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.VisitorRequest.fromBuffer(value),
        ($5.VisitorsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.VisitorRequest, $5.VisitorResponse>(
        'UserInsertVisitor',
        userInsertVisitor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.VisitorRequest.fromBuffer(value),
        ($5.VisitorResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceVisitorLookupModel, $5.VisitorsList>(
            'GetAllOvernightParkingVisitors',
            getAllOvernightParkingVisitors_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceVisitorLookupModel.fromBuffer(value),
            ($5.VisitorsList value) => value.writeToBuffer()));
  }

  $async.Future<$5.VisitorResponse> insertVisitor_Pre(
      $grpc.ServiceCall call, $async.Future<$5.VisitorRequest> request) async {
    return insertVisitor(call, await request);
  }

  $async.Future<$5.VisitorResponse> updateVisitor_Pre(
      $grpc.ServiceCall call, $async.Future<$5.VisitorRequest> request) async {
    return updateVisitor(call, await request);
  }

  $async.Future<$5.VisitorResponse> guardUpdateVisitor_Pre(
      $grpc.ServiceCall call, $async.Future<$5.VisitorRequest> request) async {
    return guardUpdateVisitor(call, await request);
  }

  $async.Future<$5.VisitorResponse> deleteVisitor_Pre($grpc.ServiceCall call,
      $async.Future<$5.VisitorLookupModel> request) async {
    return deleteVisitor(call, await request);
  }

  $async.Future<$5.VisitorRequest> getVisitorById_Pre($grpc.ServiceCall call,
      $async.Future<$5.VisitorLookupModel> request) async {
    return getVisitorById(call, await request);
  }

  $async.Future<$5.VisitorsList> getAllVisitors_Pre($grpc.ServiceCall call,
      $async.Future<$5.ResidenceVisitorLookupModel> request) async {
    return getAllVisitors(call, await request);
  }

  $async.Future<$5.VisitorsList> getAllCheckInVisitors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ResidenceVisitorLookupModel> request) async {
    return getAllCheckInVisitors(call, await request);
  }

  $async.Future<$5.VisitorsList> getAllCheckOutVisitors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ResidenceVisitorLookupModel> request) async {
    return getAllCheckOutVisitors(call, await request);
  }

  $async.Future<$5.VisitorsList> getAllVisitorsByUserId_Pre(
      $grpc.ServiceCall call, $async.Future<$5.VisitorRequest> request) async {
    return getAllVisitorsByUserId(call, await request);
  }

  $async.Future<$5.VisitorResponse> userInsertVisitor_Pre(
      $grpc.ServiceCall call, $async.Future<$5.VisitorRequest> request) async {
    return userInsertVisitor(call, await request);
  }

  $async.Future<$5.VisitorsList> getAllOvernightParkingVisitors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ResidenceVisitorLookupModel> request) async {
    return getAllOvernightParkingVisitors(call, await request);
  }

  $async.Future<$5.VisitorResponse> insertVisitor(
      $grpc.ServiceCall call, $5.VisitorRequest request);
  $async.Future<$5.VisitorResponse> updateVisitor(
      $grpc.ServiceCall call, $5.VisitorRequest request);
  $async.Future<$5.VisitorResponse> guardUpdateVisitor(
      $grpc.ServiceCall call, $5.VisitorRequest request);
  $async.Future<$5.VisitorResponse> deleteVisitor(
      $grpc.ServiceCall call, $5.VisitorLookupModel request);
  $async.Future<$5.VisitorRequest> getVisitorById(
      $grpc.ServiceCall call, $5.VisitorLookupModel request);
  $async.Future<$5.VisitorsList> getAllVisitors(
      $grpc.ServiceCall call, $5.ResidenceVisitorLookupModel request);
  $async.Future<$5.VisitorsList> getAllCheckInVisitors(
      $grpc.ServiceCall call, $5.ResidenceVisitorLookupModel request);
  $async.Future<$5.VisitorsList> getAllCheckOutVisitors(
      $grpc.ServiceCall call, $5.ResidenceVisitorLookupModel request);
  $async.Future<$5.VisitorsList> getAllVisitorsByUserId(
      $grpc.ServiceCall call, $5.VisitorRequest request);
  $async.Future<$5.VisitorResponse> userInsertVisitor(
      $grpc.ServiceCall call, $5.VisitorRequest request);
  $async.Future<$5.VisitorsList> getAllOvernightParkingVisitors(
      $grpc.ServiceCall call, $5.ResidenceVisitorLookupModel request);
}
