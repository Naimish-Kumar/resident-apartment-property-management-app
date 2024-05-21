///
//  Generated code. Do not modify.
//  source: facilitybooking.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'facilitybooking.pb.dart' as $5;
export 'facilitybooking.pb.dart';

class RpcFacilityBookingClient extends $grpc.Client {
  static final _$insertFacilityBooking =
      $grpc.ClientMethod<$5.FacilityBookingRequest, $5.FacilityBookingResponse>(
          '/facilitybooking.RpcFacilityBooking/InsertFacilityBooking',
          ($5.FacilityBookingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.FacilityBookingResponse.fromBuffer(value));
  static final _$updateFacilityBooking =
      $grpc.ClientMethod<$5.FacilityBookingRequest, $5.FacilityBookingResponse>(
          '/facilitybooking.RpcFacilityBooking/UpdateFacilityBooking',
          ($5.FacilityBookingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.FacilityBookingResponse.fromBuffer(value));
  static final _$guardUpdateFacilityBooking =
      $grpc.ClientMethod<$5.FacilityBookingRequest, $5.FacilityBookingResponse>(
          '/facilitybooking.RpcFacilityBooking/GuardUpdateFacilityBooking',
          ($5.FacilityBookingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.FacilityBookingResponse.fromBuffer(value));
  static final _$deleteFacilityBooking = $grpc.ClientMethod<
          $5.FacilityBookingLookupModel, $5.FacilityBookingResponse>(
      '/facilitybooking.RpcFacilityBooking/DeleteFacilityBooking',
      ($5.FacilityBookingLookupModel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.FacilityBookingResponse.fromBuffer(value));
  static final _$getFacilityBookingById = $grpc.ClientMethod<
          $5.FacilityBookingLookupModel, $5.FacilityBookingRequest>(
      '/facilitybooking.RpcFacilityBooking/GetFacilityBookingById',
      ($5.FacilityBookingLookupModel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.FacilityBookingRequest.fromBuffer(value));
  static final _$getAllFacilityBookings = $grpc.ClientMethod<
          $5.ResidenceFacilityBookingLookupModel, $5.FacilityBookingsList>(
      '/facilitybooking.RpcFacilityBooking/GetAllFacilityBookings',
      ($5.ResidenceFacilityBookingLookupModel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.FacilityBookingsList.fromBuffer(value));
  static final _$getUserFacilityBookingById = $grpc.ClientMethod<
          $5.UserFacilityBookingLookupModel, $5.FacilityBookingsList>(
      '/facilitybooking.RpcFacilityBooking/GetUserFacilityBookingById',
      ($5.UserFacilityBookingLookupModel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.FacilityBookingsList.fromBuffer(value));

  RpcFacilityBookingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.FacilityBookingResponse> insertFacilityBooking(
      $5.FacilityBookingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertFacilityBooking, request, options: options);
  }

  $grpc.ResponseFuture<$5.FacilityBookingResponse> updateFacilityBooking(
      $5.FacilityBookingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateFacilityBooking, request, options: options);
  }

  $grpc.ResponseFuture<$5.FacilityBookingResponse> guardUpdateFacilityBooking(
      $5.FacilityBookingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$guardUpdateFacilityBooking, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.FacilityBookingResponse> deleteFacilityBooking(
      $5.FacilityBookingLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFacilityBooking, request, options: options);
  }

  $grpc.ResponseFuture<$5.FacilityBookingRequest> getFacilityBookingById(
      $5.FacilityBookingLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFacilityBookingById, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.FacilityBookingsList> getAllFacilityBookings(
      $5.ResidenceFacilityBookingLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllFacilityBookings, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.FacilityBookingsList> getUserFacilityBookingById(
      $5.UserFacilityBookingLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserFacilityBookingById, request,
        options: options);
  }
}

abstract class RpcFacilityBookingServiceBase extends $grpc.Service {
  $core.String get $name => 'facilitybooking.RpcFacilityBooking';

  RpcFacilityBookingServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.FacilityBookingRequest,
            $5.FacilityBookingResponse>(
        'InsertFacilityBooking',
        insertFacilityBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.FacilityBookingRequest.fromBuffer(value),
        ($5.FacilityBookingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.FacilityBookingRequest,
            $5.FacilityBookingResponse>(
        'UpdateFacilityBooking',
        updateFacilityBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.FacilityBookingRequest.fromBuffer(value),
        ($5.FacilityBookingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.FacilityBookingRequest,
            $5.FacilityBookingResponse>(
        'GuardUpdateFacilityBooking',
        guardUpdateFacilityBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.FacilityBookingRequest.fromBuffer(value),
        ($5.FacilityBookingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.FacilityBookingLookupModel,
            $5.FacilityBookingResponse>(
        'DeleteFacilityBooking',
        deleteFacilityBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.FacilityBookingLookupModel.fromBuffer(value),
        ($5.FacilityBookingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.FacilityBookingLookupModel,
            $5.FacilityBookingRequest>(
        'GetFacilityBookingById',
        getFacilityBookingById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.FacilityBookingLookupModel.fromBuffer(value),
        ($5.FacilityBookingRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ResidenceFacilityBookingLookupModel,
            $5.FacilityBookingsList>(
        'GetAllFacilityBookings',
        getAllFacilityBookings_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ResidenceFacilityBookingLookupModel.fromBuffer(value),
        ($5.FacilityBookingsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserFacilityBookingLookupModel,
            $5.FacilityBookingsList>(
        'GetUserFacilityBookingById',
        getUserFacilityBookingById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UserFacilityBookingLookupModel.fromBuffer(value),
        ($5.FacilityBookingsList value) => value.writeToBuffer()));
  }

  $async.Future<$5.FacilityBookingResponse> insertFacilityBooking_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.FacilityBookingRequest> request) async {
    return insertFacilityBooking(call, await request);
  }

  $async.Future<$5.FacilityBookingResponse> updateFacilityBooking_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.FacilityBookingRequest> request) async {
    return updateFacilityBooking(call, await request);
  }

  $async.Future<$5.FacilityBookingResponse> guardUpdateFacilityBooking_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.FacilityBookingRequest> request) async {
    return guardUpdateFacilityBooking(call, await request);
  }

  $async.Future<$5.FacilityBookingResponse> deleteFacilityBooking_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.FacilityBookingLookupModel> request) async {
    return deleteFacilityBooking(call, await request);
  }

  $async.Future<$5.FacilityBookingRequest> getFacilityBookingById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.FacilityBookingLookupModel> request) async {
    return getFacilityBookingById(call, await request);
  }

  $async.Future<$5.FacilityBookingsList> getAllFacilityBookings_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ResidenceFacilityBookingLookupModel> request) async {
    return getAllFacilityBookings(call, await request);
  }

  $async.Future<$5.FacilityBookingsList> getUserFacilityBookingById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UserFacilityBookingLookupModel> request) async {
    return getUserFacilityBookingById(call, await request);
  }

  $async.Future<$5.FacilityBookingResponse> insertFacilityBooking(
      $grpc.ServiceCall call, $5.FacilityBookingRequest request);
  $async.Future<$5.FacilityBookingResponse> updateFacilityBooking(
      $grpc.ServiceCall call, $5.FacilityBookingRequest request);
  $async.Future<$5.FacilityBookingResponse> guardUpdateFacilityBooking(
      $grpc.ServiceCall call, $5.FacilityBookingRequest request);
  $async.Future<$5.FacilityBookingResponse> deleteFacilityBooking(
      $grpc.ServiceCall call, $5.FacilityBookingLookupModel request);
  $async.Future<$5.FacilityBookingRequest> getFacilityBookingById(
      $grpc.ServiceCall call, $5.FacilityBookingLookupModel request);
  $async.Future<$5.FacilityBookingsList> getAllFacilityBookings(
      $grpc.ServiceCall call, $5.ResidenceFacilityBookingLookupModel request);
  $async.Future<$5.FacilityBookingsList> getUserFacilityBookingById(
      $grpc.ServiceCall call, $5.UserFacilityBookingLookupModel request);
}
