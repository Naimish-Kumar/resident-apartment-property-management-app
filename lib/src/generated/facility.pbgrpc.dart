///
//  Generated code. Do not modify.
//  source: facility.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'facility.pb.dart' as $0;
import 'utility.pb.dart' as $1;
export 'facility.pb.dart';

class RpcFacilityClient extends $grpc.Client {
  static final _$insertFacility =
      $grpc.ClientMethod<$0.FacilityRequest, $0.FacilityResponse>(
          '/facility.RpcFacility/InsertFacility',
          ($0.FacilityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FacilityResponse.fromBuffer(value));
  static final _$updateFacility =
      $grpc.ClientMethod<$0.FacilityRequest, $0.FacilityResponse>(
          '/facility.RpcFacility/UpdateFacility',
          ($0.FacilityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FacilityResponse.fromBuffer(value));
  static final _$deleteFacility =
      $grpc.ClientMethod<$0.FacilityLookupModel, $0.FacilityResponse>(
          '/facility.RpcFacility/DeleteFacility',
          ($0.FacilityLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FacilityResponse.fromBuffer(value));
  static final _$getFacilityById =
      $grpc.ClientMethod<$0.FacilityLookupModel, $0.FacilityRequest>(
          '/facility.RpcFacility/GetFacilityById',
          ($0.FacilityLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FacilityRequest.fromBuffer(value));
  static final _$getAllFacilities =
      $grpc.ClientMethod<$1.Empty, $0.FacilitiesList>(
          '/facility.RpcFacility/GetAllFacilities',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.FacilitiesList.fromBuffer(value));
  static final _$getAllFacilitiesByResidenceById =
      $grpc.ClientMethod<$0.ResidenceFacilityLookupModel, $0.FacilitiesList>(
          '/facility.RpcFacility/GetAllFacilitiesByResidenceById',
          ($0.ResidenceFacilityLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.FacilitiesList.fromBuffer(value));

  RpcFacilityClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.FacilityResponse> insertFacility(
      $0.FacilityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertFacility, request, options: options);
  }

  $grpc.ResponseFuture<$0.FacilityResponse> updateFacility(
      $0.FacilityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateFacility, request, options: options);
  }

  $grpc.ResponseFuture<$0.FacilityResponse> deleteFacility(
      $0.FacilityLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFacility, request, options: options);
  }

  $grpc.ResponseFuture<$0.FacilityRequest> getFacilityById(
      $0.FacilityLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFacilityById, request, options: options);
  }

  $grpc.ResponseFuture<$0.FacilitiesList> getAllFacilities($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllFacilities, request, options: options);
  }

  $grpc.ResponseFuture<$0.FacilitiesList> getAllFacilitiesByResidenceById(
      $0.ResidenceFacilityLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllFacilitiesByResidenceById, request,
        options: options);
  }
}

abstract class RpcFacilityServiceBase extends $grpc.Service {
  $core.String get $name => 'facility.RpcFacility';

  RpcFacilityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FacilityRequest, $0.FacilityResponse>(
        'InsertFacility',
        insertFacility_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FacilityRequest.fromBuffer(value),
        ($0.FacilityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FacilityRequest, $0.FacilityResponse>(
        'UpdateFacility',
        updateFacility_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FacilityRequest.fromBuffer(value),
        ($0.FacilityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FacilityLookupModel, $0.FacilityResponse>(
        'DeleteFacility',
        deleteFacility_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FacilityLookupModel.fromBuffer(value),
        ($0.FacilityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FacilityLookupModel, $0.FacilityRequest>(
        'GetFacilityById',
        getFacilityById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FacilityLookupModel.fromBuffer(value),
        ($0.FacilityRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.FacilitiesList>(
        'GetAllFacilities',
        getAllFacilities_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.FacilitiesList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResidenceFacilityLookupModel, $0.FacilitiesList>(
            'GetAllFacilitiesByResidenceById',
            getAllFacilitiesByResidenceById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResidenceFacilityLookupModel.fromBuffer(value),
            ($0.FacilitiesList value) => value.writeToBuffer()));
  }

  $async.Future<$0.FacilityResponse> insertFacility_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FacilityRequest> request) async {
    return insertFacility(call, await request);
  }

  $async.Future<$0.FacilityResponse> updateFacility_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FacilityRequest> request) async {
    return updateFacility(call, await request);
  }

  $async.Future<$0.FacilityResponse> deleteFacility_Pre($grpc.ServiceCall call,
      $async.Future<$0.FacilityLookupModel> request) async {
    return deleteFacility(call, await request);
  }

  $async.Future<$0.FacilityRequest> getFacilityById_Pre($grpc.ServiceCall call,
      $async.Future<$0.FacilityLookupModel> request) async {
    return getFacilityById(call, await request);
  }

  $async.Future<$0.FacilitiesList> getAllFacilities_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAllFacilities(call, await request);
  }

  $async.Future<$0.FacilitiesList> getAllFacilitiesByResidenceById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResidenceFacilityLookupModel> request) async {
    return getAllFacilitiesByResidenceById(call, await request);
  }

  $async.Future<$0.FacilityResponse> insertFacility(
      $grpc.ServiceCall call, $0.FacilityRequest request);
  $async.Future<$0.FacilityResponse> updateFacility(
      $grpc.ServiceCall call, $0.FacilityRequest request);
  $async.Future<$0.FacilityResponse> deleteFacility(
      $grpc.ServiceCall call, $0.FacilityLookupModel request);
  $async.Future<$0.FacilityRequest> getFacilityById(
      $grpc.ServiceCall call, $0.FacilityLookupModel request);
  $async.Future<$0.FacilitiesList> getAllFacilities(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.FacilitiesList> getAllFacilitiesByResidenceById(
      $grpc.ServiceCall call, $0.ResidenceFacilityLookupModel request);
}
