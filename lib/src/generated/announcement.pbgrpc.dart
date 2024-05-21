///
//  Generated code. Do not modify.
//  source: announcement.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'announcement.pb.dart' as $0;
export 'announcement.pb.dart';

class RpcAnnouncementClient extends $grpc.Client {
  static final _$insertAnnouncement =
      $grpc.ClientMethod<$0.AnnouncementRequest, $0.AnnouncementResponse>(
          '/announcement.RpcAnnouncement/InsertAnnouncement',
          ($0.AnnouncementRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnnouncementResponse.fromBuffer(value));
  static final _$updateAnnouncement =
      $grpc.ClientMethod<$0.AnnouncementRequest, $0.AnnouncementResponse>(
          '/announcement.RpcAnnouncement/UpdateAnnouncement',
          ($0.AnnouncementRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnnouncementResponse.fromBuffer(value));
  static final _$deleteAnnouncement =
      $grpc.ClientMethod<$0.AnnouncementLookupModel, $0.AnnouncementResponse>(
          '/announcement.RpcAnnouncement/DeleteAnnouncement',
          ($0.AnnouncementLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnnouncementResponse.fromBuffer(value));
  static final _$getAnnouncementById =
      $grpc.ClientMethod<$0.AnnouncementLookupModel, $0.AnnouncementRequest>(
          '/announcement.RpcAnnouncement/GetAnnouncementById',
          ($0.AnnouncementLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnnouncementRequest.fromBuffer(value));
  static final _$getAllAnnouncements =
      $grpc.ClientMethod<$0.ResAnnouncementLookupModel, $0.AnnouncementsList>(
          '/announcement.RpcAnnouncement/GetAllAnnouncements',
          ($0.ResAnnouncementLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnnouncementsList.fromBuffer(value));
  static final _$getAnnouncementDocById = $grpc.ClientMethod<
          $0.AnnouncementDocLookupModel, $0.AnnouncementDocsModel>(
      '/announcement.RpcAnnouncement/GetAnnouncementDocById',
      ($0.AnnouncementDocLookupModel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AnnouncementDocsModel.fromBuffer(value));
  static final _$getAnnouncementByUserId =
      $grpc.ClientMethod<$0.AnnouncementRequest, $0.AnnouncementsList>(
          '/announcement.RpcAnnouncement/GetAnnouncementByUserId',
          ($0.AnnouncementRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnnouncementsList.fromBuffer(value));
  static final _$getNoticeByUserId =
      $grpc.ClientMethod<$0.AnnouncementRequest, $0.AnnouncementsList>(
          '/announcement.RpcAnnouncement/GetNoticeByUserId',
          ($0.AnnouncementRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnnouncementsList.fromBuffer(value));

  RpcAnnouncementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AnnouncementResponse> insertAnnouncement(
      $0.AnnouncementRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnnouncementResponse> updateAnnouncement(
      $0.AnnouncementRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnnouncementResponse> deleteAnnouncement(
      $0.AnnouncementLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnnouncementRequest> getAnnouncementById(
      $0.AnnouncementLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAnnouncementById, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnnouncementsList> getAllAnnouncements(
      $0.ResAnnouncementLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllAnnouncements, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnnouncementDocsModel> getAnnouncementDocById(
      $0.AnnouncementDocLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAnnouncementDocById, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AnnouncementsList> getAnnouncementByUserId(
      $0.AnnouncementRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAnnouncementByUserId, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AnnouncementsList> getNoticeByUserId(
      $0.AnnouncementRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNoticeByUserId, request, options: options);
  }
}

abstract class RpcAnnouncementServiceBase extends $grpc.Service {
  $core.String get $name => 'announcement.RpcAnnouncement';

  RpcAnnouncementServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AnnouncementRequest, $0.AnnouncementResponse>(
            'InsertAnnouncement',
            insertAnnouncement_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AnnouncementRequest.fromBuffer(value),
            ($0.AnnouncementResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AnnouncementRequest, $0.AnnouncementResponse>(
            'UpdateAnnouncement',
            updateAnnouncement_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AnnouncementRequest.fromBuffer(value),
            ($0.AnnouncementResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnnouncementLookupModel,
            $0.AnnouncementResponse>(
        'DeleteAnnouncement',
        deleteAnnouncement_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AnnouncementLookupModel.fromBuffer(value),
        ($0.AnnouncementResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AnnouncementLookupModel, $0.AnnouncementRequest>(
            'GetAnnouncementById',
            getAnnouncementById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AnnouncementLookupModel.fromBuffer(value),
            ($0.AnnouncementRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResAnnouncementLookupModel,
            $0.AnnouncementsList>(
        'GetAllAnnouncements',
        getAllAnnouncements_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResAnnouncementLookupModel.fromBuffer(value),
        ($0.AnnouncementsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnnouncementDocLookupModel,
            $0.AnnouncementDocsModel>(
        'GetAnnouncementDocById',
        getAnnouncementDocById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AnnouncementDocLookupModel.fromBuffer(value),
        ($0.AnnouncementDocsModel value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AnnouncementRequest, $0.AnnouncementsList>(
            'GetAnnouncementByUserId',
            getAnnouncementByUserId_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AnnouncementRequest.fromBuffer(value),
            ($0.AnnouncementsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AnnouncementRequest, $0.AnnouncementsList>(
            'GetNoticeByUserId',
            getNoticeByUserId_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AnnouncementRequest.fromBuffer(value),
            ($0.AnnouncementsList value) => value.writeToBuffer()));
  }

  $async.Future<$0.AnnouncementResponse> insertAnnouncement_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AnnouncementRequest> request) async {
    return insertAnnouncement(call, await request);
  }

  $async.Future<$0.AnnouncementResponse> updateAnnouncement_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AnnouncementRequest> request) async {
    return updateAnnouncement(call, await request);
  }

  $async.Future<$0.AnnouncementResponse> deleteAnnouncement_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AnnouncementLookupModel> request) async {
    return deleteAnnouncement(call, await request);
  }

  $async.Future<$0.AnnouncementRequest> getAnnouncementById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AnnouncementLookupModel> request) async {
    return getAnnouncementById(call, await request);
  }

  $async.Future<$0.AnnouncementsList> getAllAnnouncements_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResAnnouncementLookupModel> request) async {
    return getAllAnnouncements(call, await request);
  }

  $async.Future<$0.AnnouncementDocsModel> getAnnouncementDocById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AnnouncementDocLookupModel> request) async {
    return getAnnouncementDocById(call, await request);
  }

  $async.Future<$0.AnnouncementsList> getAnnouncementByUserId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AnnouncementRequest> request) async {
    return getAnnouncementByUserId(call, await request);
  }

  $async.Future<$0.AnnouncementsList> getNoticeByUserId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AnnouncementRequest> request) async {
    return getNoticeByUserId(call, await request);
  }

  $async.Future<$0.AnnouncementResponse> insertAnnouncement(
      $grpc.ServiceCall call, $0.AnnouncementRequest request);
  $async.Future<$0.AnnouncementResponse> updateAnnouncement(
      $grpc.ServiceCall call, $0.AnnouncementRequest request);
  $async.Future<$0.AnnouncementResponse> deleteAnnouncement(
      $grpc.ServiceCall call, $0.AnnouncementLookupModel request);
  $async.Future<$0.AnnouncementRequest> getAnnouncementById(
      $grpc.ServiceCall call, $0.AnnouncementLookupModel request);
  $async.Future<$0.AnnouncementsList> getAllAnnouncements(
      $grpc.ServiceCall call, $0.ResAnnouncementLookupModel request);
  $async.Future<$0.AnnouncementDocsModel> getAnnouncementDocById(
      $grpc.ServiceCall call, $0.AnnouncementDocLookupModel request);
  $async.Future<$0.AnnouncementsList> getAnnouncementByUserId(
      $grpc.ServiceCall call, $0.AnnouncementRequest request);
  $async.Future<$0.AnnouncementsList> getNoticeByUserId(
      $grpc.ServiceCall call, $0.AnnouncementRequest request);
}
