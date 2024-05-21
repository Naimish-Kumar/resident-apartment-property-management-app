///
//  Generated code. Do not modify.
//  source: complaint.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'complaint.pb.dart' as $2;
export 'complaint.pb.dart';

class RpcComplaintClient extends $grpc.Client {
  static final _$insertComplaint =
      $grpc.ClientMethod<$2.ComplaintRequest, $2.ComplaintResponse>(
          '/complaint.RpcComplaint/InsertComplaint',
          ($2.ComplaintRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ComplaintResponse.fromBuffer(value));
  static final _$updateComplaint =
      $grpc.ClientMethod<$2.ComplaintRequest, $2.ComplaintResponse>(
          '/complaint.RpcComplaint/UpdateComplaint',
          ($2.ComplaintRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ComplaintResponse.fromBuffer(value));
  static final _$deleteComplaint =
      $grpc.ClientMethod<$2.ComplaintLookupModel, $2.ComplaintResponse>(
          '/complaint.RpcComplaint/DeleteComplaint',
          ($2.ComplaintLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ComplaintResponse.fromBuffer(value));
  static final _$getComplaintById =
      $grpc.ClientMethod<$2.ComplaintLookupModel, $2.ComplaintRequest>(
          '/complaint.RpcComplaint/GetComplaintById',
          ($2.ComplaintLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ComplaintRequest.fromBuffer(value));
  static final _$getAllComplaints =
      $grpc.ClientMethod<$2.ResComplaintLookupModel, $2.ComplaintsList>(
          '/complaint.RpcComplaint/GetAllComplaints',
          ($2.ResComplaintLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ComplaintsList.fromBuffer(value));
  static final _$getComplaintDocById =
      $grpc.ClientMethod<$2.ComplaintDocLookupModel, $2.ComplaintDocsModel>(
          '/complaint.RpcComplaint/GetComplaintDocById',
          ($2.ComplaintDocLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ComplaintDocsModel.fromBuffer(value));

  RpcComplaintClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ComplaintResponse> insertComplaint(
      $2.ComplaintRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertComplaint, request, options: options);
  }

  $grpc.ResponseFuture<$2.ComplaintResponse> updateComplaint(
      $2.ComplaintRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateComplaint, request, options: options);
  }

  $grpc.ResponseFuture<$2.ComplaintResponse> deleteComplaint(
      $2.ComplaintLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteComplaint, request, options: options);
  }

  $grpc.ResponseFuture<$2.ComplaintRequest> getComplaintById(
      $2.ComplaintLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComplaintById, request, options: options);
  }

  $grpc.ResponseFuture<$2.ComplaintsList> getAllComplaints(
      $2.ResComplaintLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllComplaints, request, options: options);
  }

  $grpc.ResponseFuture<$2.ComplaintDocsModel> getComplaintDocById(
      $2.ComplaintDocLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComplaintDocById, request, options: options);
  }
}

abstract class RpcComplaintServiceBase extends $grpc.Service {
  $core.String get $name => 'complaint.RpcComplaint';

  RpcComplaintServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ComplaintRequest, $2.ComplaintResponse>(
        'InsertComplaint',
        insertComplaint_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ComplaintRequest.fromBuffer(value),
        ($2.ComplaintResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ComplaintRequest, $2.ComplaintResponse>(
        'UpdateComplaint',
        updateComplaint_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ComplaintRequest.fromBuffer(value),
        ($2.ComplaintResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ComplaintLookupModel, $2.ComplaintResponse>(
            'DeleteComplaint',
            deleteComplaint_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ComplaintLookupModel.fromBuffer(value),
            ($2.ComplaintResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ComplaintLookupModel, $2.ComplaintRequest>(
            'GetComplaintById',
            getComplaintById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ComplaintLookupModel.fromBuffer(value),
            ($2.ComplaintRequest value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ResComplaintLookupModel, $2.ComplaintsList>(
            'GetAllComplaints',
            getAllComplaints_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ResComplaintLookupModel.fromBuffer(value),
            ($2.ComplaintsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ComplaintDocLookupModel, $2.ComplaintDocsModel>(
            'GetComplaintDocById',
            getComplaintDocById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ComplaintDocLookupModel.fromBuffer(value),
            ($2.ComplaintDocsModel value) => value.writeToBuffer()));
  }

  $async.Future<$2.ComplaintResponse> insertComplaint_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ComplaintRequest> request) async {
    return insertComplaint(call, await request);
  }

  $async.Future<$2.ComplaintResponse> updateComplaint_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ComplaintRequest> request) async {
    return updateComplaint(call, await request);
  }

  $async.Future<$2.ComplaintResponse> deleteComplaint_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ComplaintLookupModel> request) async {
    return deleteComplaint(call, await request);
  }

  $async.Future<$2.ComplaintRequest> getComplaintById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ComplaintLookupModel> request) async {
    return getComplaintById(call, await request);
  }

  $async.Future<$2.ComplaintsList> getAllComplaints_Pre($grpc.ServiceCall call,
      $async.Future<$2.ResComplaintLookupModel> request) async {
    return getAllComplaints(call, await request);
  }

  $async.Future<$2.ComplaintDocsModel> getComplaintDocById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ComplaintDocLookupModel> request) async {
    return getComplaintDocById(call, await request);
  }

  $async.Future<$2.ComplaintResponse> insertComplaint(
      $grpc.ServiceCall call, $2.ComplaintRequest request);
  $async.Future<$2.ComplaintResponse> updateComplaint(
      $grpc.ServiceCall call, $2.ComplaintRequest request);
  $async.Future<$2.ComplaintResponse> deleteComplaint(
      $grpc.ServiceCall call, $2.ComplaintLookupModel request);
  $async.Future<$2.ComplaintRequest> getComplaintById(
      $grpc.ServiceCall call, $2.ComplaintLookupModel request);
  $async.Future<$2.ComplaintsList> getAllComplaints(
      $grpc.ServiceCall call, $2.ResComplaintLookupModel request);
  $async.Future<$2.ComplaintDocsModel> getComplaintDocById(
      $grpc.ServiceCall call, $2.ComplaintDocLookupModel request);
}
