///
//  Generated code. Do not modify.
//  source: slot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'slot.pb.dart' as $3;
export 'slot.pb.dart';

class RpcSlotClient extends $grpc.Client {
  static final _$insertSlot =
      $grpc.ClientMethod<$3.SlotRequest, $3.SlotResponse>(
          '/slot.RpcSlot/InsertSlot',
          ($3.SlotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SlotResponse.fromBuffer(value));
  static final _$updateSlot =
      $grpc.ClientMethod<$3.SlotRequest, $3.SlotResponse>(
          '/slot.RpcSlot/UpdateSlot',
          ($3.SlotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SlotResponse.fromBuffer(value));
  static final _$deleteSlot =
      $grpc.ClientMethod<$3.SlotLookupModel, $3.SlotResponse>(
          '/slot.RpcSlot/DeleteSlot',
          ($3.SlotLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SlotResponse.fromBuffer(value));
  static final _$getSlotById =
      $grpc.ClientMethod<$3.SlotLookupModel, $3.SlotRequest>(
          '/slot.RpcSlot/GetSlotById',
          ($3.SlotLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SlotRequest.fromBuffer(value));
  static final _$getAllSlots =
      $grpc.ClientMethod<$3.ResSlotLookupModel, $3.SlotsList>(
          '/slot.RpcSlot/GetAllSlots',
          ($3.ResSlotLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SlotsList.fromBuffer(value));
  static final _$getAllSlotByFacilitieById =
      $grpc.ClientMethod<$3.SlotFacilityLookupModel, $3.SlotsList>(
          '/slot.RpcSlot/GetAllSlotByFacilitieById',
          ($3.SlotFacilityLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SlotsList.fromBuffer(value));

  RpcSlotClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.SlotResponse> insertSlot($3.SlotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertSlot, request, options: options);
  }

  $grpc.ResponseFuture<$3.SlotResponse> updateSlot($3.SlotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSlot, request, options: options);
  }

  $grpc.ResponseFuture<$3.SlotResponse> deleteSlot($3.SlotLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSlot, request, options: options);
  }

  $grpc.ResponseFuture<$3.SlotRequest> getSlotById($3.SlotLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSlotById, request, options: options);
  }

  $grpc.ResponseFuture<$3.SlotsList> getAllSlots($3.ResSlotLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllSlots, request, options: options);
  }

  $grpc.ResponseFuture<$3.SlotsList> getAllSlotByFacilitieById(
      $3.SlotFacilityLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllSlotByFacilitieById, request,
        options: options);
  }
}

abstract class RpcSlotServiceBase extends $grpc.Service {
  $core.String get $name => 'slot.RpcSlot';

  RpcSlotServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.SlotRequest, $3.SlotResponse>(
        'InsertSlot',
        insertSlot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SlotRequest.fromBuffer(value),
        ($3.SlotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SlotRequest, $3.SlotResponse>(
        'UpdateSlot',
        updateSlot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SlotRequest.fromBuffer(value),
        ($3.SlotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SlotLookupModel, $3.SlotResponse>(
        'DeleteSlot',
        deleteSlot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SlotLookupModel.fromBuffer(value),
        ($3.SlotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SlotLookupModel, $3.SlotRequest>(
        'GetSlotById',
        getSlotById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SlotLookupModel.fromBuffer(value),
        ($3.SlotRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ResSlotLookupModel, $3.SlotsList>(
        'GetAllSlots',
        getAllSlots_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ResSlotLookupModel.fromBuffer(value),
        ($3.SlotsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SlotFacilityLookupModel, $3.SlotsList>(
        'GetAllSlotByFacilitieById',
        getAllSlotByFacilitieById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.SlotFacilityLookupModel.fromBuffer(value),
        ($3.SlotsList value) => value.writeToBuffer()));
  }

  $async.Future<$3.SlotResponse> insertSlot_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SlotRequest> request) async {
    return insertSlot(call, await request);
  }

  $async.Future<$3.SlotResponse> updateSlot_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SlotRequest> request) async {
    return updateSlot(call, await request);
  }

  $async.Future<$3.SlotResponse> deleteSlot_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SlotLookupModel> request) async {
    return deleteSlot(call, await request);
  }

  $async.Future<$3.SlotRequest> getSlotById_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SlotLookupModel> request) async {
    return getSlotById(call, await request);
  }

  $async.Future<$3.SlotsList> getAllSlots_Pre($grpc.ServiceCall call,
      $async.Future<$3.ResSlotLookupModel> request) async {
    return getAllSlots(call, await request);
  }

  $async.Future<$3.SlotsList> getAllSlotByFacilitieById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.SlotFacilityLookupModel> request) async {
    return getAllSlotByFacilitieById(call, await request);
  }

  $async.Future<$3.SlotResponse> insertSlot(
      $grpc.ServiceCall call, $3.SlotRequest request);
  $async.Future<$3.SlotResponse> updateSlot(
      $grpc.ServiceCall call, $3.SlotRequest request);
  $async.Future<$3.SlotResponse> deleteSlot(
      $grpc.ServiceCall call, $3.SlotLookupModel request);
  $async.Future<$3.SlotRequest> getSlotById(
      $grpc.ServiceCall call, $3.SlotLookupModel request);
  $async.Future<$3.SlotsList> getAllSlots(
      $grpc.ServiceCall call, $3.ResSlotLookupModel request);
  $async.Future<$3.SlotsList> getAllSlotByFacilitieById(
      $grpc.ServiceCall call, $3.SlotFacilityLookupModel request);
}
