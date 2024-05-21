///
//  Generated code. Do not modify.
//  source: technician.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'technician.pb.dart' as $0;
import 'utility.pb.dart' as $1;
export 'technician.pb.dart';

class RpcTechnicianClient extends $grpc.Client {
  static final _$insertTechnician =
      $grpc.ClientMethod<$0.TechnicianRequest, $0.TechnicianResponse>(
          '/technician.RpcTechnician/InsertTechnician',
          ($0.TechnicianRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechnicianResponse.fromBuffer(value));
  static final _$updateTechnician =
      $grpc.ClientMethod<$0.TechnicianRequest, $0.TechnicianResponse>(
          '/technician.RpcTechnician/UpdateTechnician',
          ($0.TechnicianRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechnicianResponse.fromBuffer(value));
  static final _$deleteTechnician =
      $grpc.ClientMethod<$0.TechnicianLookupModel, $0.TechnicianResponse>(
          '/technician.RpcTechnician/DeleteTechnician',
          ($0.TechnicianLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechnicianResponse.fromBuffer(value));
  static final _$getTechnicianById =
      $grpc.ClientMethod<$0.TechnicianLookupModel, $0.TechnicianRequest>(
          '/technician.RpcTechnician/GetTechnicianById',
          ($0.TechnicianLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechnicianRequest.fromBuffer(value));
  static final _$getAllTechnicians =
      $grpc.ClientMethod<$1.Empty, $0.TechniciansList>(
          '/technician.RpcTechnician/GetAllTechnicians',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechniciansList.fromBuffer(value));
  static final _$statusUpdateTechnician =
      $grpc.ClientMethod<$0.TechnicianRequest, $0.TechnicianResponse>(
          '/technician.RpcTechnician/StatusUpdateTechnician',
          ($0.TechnicianRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechnicianResponse.fromBuffer(value));
  static final _$getPendingTechnicianById =
      $grpc.ClientMethod<$0.TechnicianLookupModel, $0.TechniciansList>(
          '/technician.RpcTechnician/GetPendingTechnicianById',
          ($0.TechnicianLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechniciansList.fromBuffer(value));
  static final _$getActiveTechnicianById =
      $grpc.ClientMethod<$0.TechnicianLookupModel, $0.TechniciansList>(
          '/technician.RpcTechnician/GetActiveTechnicianById',
          ($0.TechnicianLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechniciansList.fromBuffer(value));
  static final _$getCompleteTechnicianById =
      $grpc.ClientMethod<$0.TechnicianLookupModel, $0.TechniciansList>(
          '/technician.RpcTechnician/GetCompleteTechnicianById',
          ($0.TechnicianLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechniciansList.fromBuffer(value));
  static final _$viewTechnicianById =
      $grpc.ClientMethod<$0.TechnicianLookupModel, $0.TechnicianDocsModel>(
          '/technician.RpcTechnician/ViewTechnicianById',
          ($0.TechnicianLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechnicianDocsModel.fromBuffer(value));
  static final _$deleteTechnicianDocument =
      $grpc.ClientMethod<$0.TechnicianLookupModel, $0.TechnicianResponse>(
          '/technician.RpcTechnician/DeleteTechnicianDocument',
          ($0.TechnicianLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechnicianResponse.fromBuffer(value));
  static final _$getAllTechniciansFilter =
      $grpc.ClientMethod<$0.TechnicianRequest, $0.TechniciansList>(
          '/technician.RpcTechnician/GetAllTechniciansFilter',
          ($0.TechnicianRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TechniciansList.fromBuffer(value));

  RpcTechnicianClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TechnicianResponse> insertTechnician(
      $0.TechnicianRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertTechnician, request, options: options);
  }

  $grpc.ResponseFuture<$0.TechnicianResponse> updateTechnician(
      $0.TechnicianRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTechnician, request, options: options);
  }

  $grpc.ResponseFuture<$0.TechnicianResponse> deleteTechnician(
      $0.TechnicianLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTechnician, request, options: options);
  }

  $grpc.ResponseFuture<$0.TechnicianRequest> getTechnicianById(
      $0.TechnicianLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTechnicianById, request, options: options);
  }

  $grpc.ResponseFuture<$0.TechniciansList> getAllTechnicians($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTechnicians, request, options: options);
  }

  $grpc.ResponseFuture<$0.TechnicianResponse> statusUpdateTechnician(
      $0.TechnicianRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$statusUpdateTechnician, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.TechniciansList> getPendingTechnicianById(
      $0.TechnicianLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPendingTechnicianById, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.TechniciansList> getActiveTechnicianById(
      $0.TechnicianLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getActiveTechnicianById, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.TechniciansList> getCompleteTechnicianById(
      $0.TechnicianLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCompleteTechnicianById, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.TechnicianDocsModel> viewTechnicianById(
      $0.TechnicianLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$viewTechnicianById, request, options: options);
  }

  $grpc.ResponseFuture<$0.TechnicianResponse> deleteTechnicianDocument(
      $0.TechnicianLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTechnicianDocument, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.TechniciansList> getAllTechniciansFilter(
      $0.TechnicianRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTechniciansFilter, request,
        options: options);
  }
}

abstract class RpcTechnicianServiceBase extends $grpc.Service {
  $core.String get $name => 'technician.RpcTechnician';

  RpcTechnicianServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TechnicianRequest, $0.TechnicianResponse>(
        'InsertTechnician',
        insertTechnician_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TechnicianRequest.fromBuffer(value),
        ($0.TechnicianResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TechnicianRequest, $0.TechnicianResponse>(
        'UpdateTechnician',
        updateTechnician_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TechnicianRequest.fromBuffer(value),
        ($0.TechnicianResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TechnicianLookupModel, $0.TechnicianResponse>(
            'DeleteTechnician',
            deleteTechnician_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TechnicianLookupModel.fromBuffer(value),
            ($0.TechnicianResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TechnicianLookupModel, $0.TechnicianRequest>(
            'GetTechnicianById',
            getTechnicianById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TechnicianLookupModel.fromBuffer(value),
            ($0.TechnicianRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.TechniciansList>(
        'GetAllTechnicians',
        getAllTechnicians_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.TechniciansList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TechnicianRequest, $0.TechnicianResponse>(
        'StatusUpdateTechnician',
        statusUpdateTechnician_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TechnicianRequest.fromBuffer(value),
        ($0.TechnicianResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TechnicianLookupModel, $0.TechniciansList>(
            'GetPendingTechnicianById',
            getPendingTechnicianById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TechnicianLookupModel.fromBuffer(value),
            ($0.TechniciansList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TechnicianLookupModel, $0.TechniciansList>(
            'GetActiveTechnicianById',
            getActiveTechnicianById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TechnicianLookupModel.fromBuffer(value),
            ($0.TechniciansList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TechnicianLookupModel, $0.TechniciansList>(
            'GetCompleteTechnicianById',
            getCompleteTechnicianById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TechnicianLookupModel.fromBuffer(value),
            ($0.TechniciansList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TechnicianLookupModel, $0.TechnicianDocsModel>(
            'ViewTechnicianById',
            viewTechnicianById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TechnicianLookupModel.fromBuffer(value),
            ($0.TechnicianDocsModel value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TechnicianLookupModel, $0.TechnicianResponse>(
            'DeleteTechnicianDocument',
            deleteTechnicianDocument_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TechnicianLookupModel.fromBuffer(value),
            ($0.TechnicianResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TechnicianRequest, $0.TechniciansList>(
        'GetAllTechniciansFilter',
        getAllTechniciansFilter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TechnicianRequest.fromBuffer(value),
        ($0.TechniciansList value) => value.writeToBuffer()));
  }

  $async.Future<$0.TechnicianResponse> insertTechnician_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianRequest> request) async {
    return insertTechnician(call, await request);
  }

  $async.Future<$0.TechnicianResponse> updateTechnician_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianRequest> request) async {
    return updateTechnician(call, await request);
  }

  $async.Future<$0.TechnicianResponse> deleteTechnician_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianLookupModel> request) async {
    return deleteTechnician(call, await request);
  }

  $async.Future<$0.TechnicianRequest> getTechnicianById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianLookupModel> request) async {
    return getTechnicianById(call, await request);
  }

  $async.Future<$0.TechniciansList> getAllTechnicians_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAllTechnicians(call, await request);
  }

  $async.Future<$0.TechnicianResponse> statusUpdateTechnician_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianRequest> request) async {
    return statusUpdateTechnician(call, await request);
  }

  $async.Future<$0.TechniciansList> getPendingTechnicianById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianLookupModel> request) async {
    return getPendingTechnicianById(call, await request);
  }

  $async.Future<$0.TechniciansList> getActiveTechnicianById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianLookupModel> request) async {
    return getActiveTechnicianById(call, await request);
  }

  $async.Future<$0.TechniciansList> getCompleteTechnicianById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianLookupModel> request) async {
    return getCompleteTechnicianById(call, await request);
  }

  $async.Future<$0.TechnicianDocsModel> viewTechnicianById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianLookupModel> request) async {
    return viewTechnicianById(call, await request);
  }

  $async.Future<$0.TechnicianResponse> deleteTechnicianDocument_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianLookupModel> request) async {
    return deleteTechnicianDocument(call, await request);
  }

  $async.Future<$0.TechniciansList> getAllTechniciansFilter_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TechnicianRequest> request) async {
    return getAllTechniciansFilter(call, await request);
  }

  $async.Future<$0.TechnicianResponse> insertTechnician(
      $grpc.ServiceCall call, $0.TechnicianRequest request);
  $async.Future<$0.TechnicianResponse> updateTechnician(
      $grpc.ServiceCall call, $0.TechnicianRequest request);
  $async.Future<$0.TechnicianResponse> deleteTechnician(
      $grpc.ServiceCall call, $0.TechnicianLookupModel request);
  $async.Future<$0.TechnicianRequest> getTechnicianById(
      $grpc.ServiceCall call, $0.TechnicianLookupModel request);
  $async.Future<$0.TechniciansList> getAllTechnicians(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.TechnicianResponse> statusUpdateTechnician(
      $grpc.ServiceCall call, $0.TechnicianRequest request);
  $async.Future<$0.TechniciansList> getPendingTechnicianById(
      $grpc.ServiceCall call, $0.TechnicianLookupModel request);
  $async.Future<$0.TechniciansList> getActiveTechnicianById(
      $grpc.ServiceCall call, $0.TechnicianLookupModel request);
  $async.Future<$0.TechniciansList> getCompleteTechnicianById(
      $grpc.ServiceCall call, $0.TechnicianLookupModel request);
  $async.Future<$0.TechnicianDocsModel> viewTechnicianById(
      $grpc.ServiceCall call, $0.TechnicianLookupModel request);
  $async.Future<$0.TechnicianResponse> deleteTechnicianDocument(
      $grpc.ServiceCall call, $0.TechnicianLookupModel request);
  $async.Future<$0.TechniciansList> getAllTechniciansFilter(
      $grpc.ServiceCall call, $0.TechnicianRequest request);
}
