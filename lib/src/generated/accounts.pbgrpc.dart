///
//  Generated code. Do not modify.
//  source: accounts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'accounts.pb.dart' as $5;
export 'accounts.pb.dart';

class RpcAccountsClient extends $grpc.Client {
  static final _$insertAccounts =
      $grpc.ClientMethod<$5.AccountsRequest, $5.AccountsResponse>(
          '/accounts.RpcAccounts/InsertAccounts',
          ($5.AccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AccountsResponse.fromBuffer(value));
  static final _$updateAccounts =
      $grpc.ClientMethod<$5.AccountsRequest, $5.AccountsResponse>(
          '/accounts.RpcAccounts/UpdateAccounts',
          ($5.AccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AccountsResponse.fromBuffer(value));
  static final _$statusUpdateAccounts =
      $grpc.ClientMethod<$5.AccountsRequest, $5.AccountsResponse>(
          '/accounts.RpcAccounts/StatusUpdateAccounts',
          ($5.AccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AccountsResponse.fromBuffer(value));
  static final _$adminStatusUpdateAccounts =
      $grpc.ClientMethod<$5.AccountsRequest, $5.AccountsResponse>(
          '/accounts.RpcAccounts/AdminStatusUpdateAccounts',
          ($5.AccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AccountsResponse.fromBuffer(value));
  static final _$userStatusUpdateAccounts =
      $grpc.ClientMethod<$5.AccountsRequest, $5.AccountsResponse>(
          '/accounts.RpcAccounts/UserStatusUpdateAccounts',
          ($5.AccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AccountsResponse.fromBuffer(value));
  static final _$deleteAccounts =
      $grpc.ClientMethod<$5.AccountsLookupModel, $5.AccountsResponse>(
          '/accounts.RpcAccounts/DeleteAccounts',
          ($5.AccountsLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AccountsResponse.fromBuffer(value));
  static final _$getAccountsById =
      $grpc.ClientMethod<$5.AccountsLookupModel, $5.AccountsRequest>(
          '/accounts.RpcAccounts/GetAccountsById',
          ($5.AccountsLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AccountsRequest.fromBuffer(value));
  static final _$getAllAccounts =
      $grpc.ClientMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
          '/accounts.RpcAccounts/GetAllAccounts',
          ($5.ResidenceAccountsLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.AccountsList.fromBuffer(value));
  static final _$getUnitAccountsById =
      $grpc.ClientMethod<$5.UnitAccountsRequest, $5.UnitAccountsResponse>(
          '/accounts.RpcAccounts/GetUnitAccountsById',
          ($5.UnitAccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.UnitAccountsResponse.fromBuffer(value));
  static final _$getUserUnitAccountsById =
      $grpc.ClientMethod<$5.UnitAccountsRequest, $5.UnitAccountsResponse>(
          '/accounts.RpcAccounts/GetUserUnitAccountsById',
          ($5.UnitAccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.UnitAccountsResponse.fromBuffer(value));
  static final _$getUnitAllAccounts =
      $grpc.ClientMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
          '/accounts.RpcAccounts/GetUnitAllAccounts',
          ($5.ResidenceAccountsLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.AccountsList.fromBuffer(value));
  static final _$getAllAccountsMaintanence =
      $grpc.ClientMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
          '/accounts.RpcAccounts/GetAllAccountsMaintanence',
          ($5.ResidenceAccountsLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.AccountsList.fromBuffer(value));
  static final _$getAllAccountsRenovation =
      $grpc.ClientMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
          '/accounts.RpcAccounts/GetAllAccountsRenovation',
          ($5.ResidenceAccountsLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.AccountsList.fromBuffer(value));
  static final _$getAllAccountsReport =
      $grpc.ClientMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
          '/accounts.RpcAccounts/GetAllAccountsReport',
          ($5.ResidenceAccountsLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.AccountsList.fromBuffer(value));

  RpcAccountsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.AccountsResponse> insertAccounts(
      $5.AccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$5.AccountsResponse> updateAccounts(
      $5.AccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$5.AccountsResponse> statusUpdateAccounts(
      $5.AccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$statusUpdateAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$5.AccountsResponse> adminStatusUpdateAccounts(
      $5.AccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$adminStatusUpdateAccounts, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.AccountsResponse> userStatusUpdateAccounts(
      $5.AccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userStatusUpdateAccounts, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.AccountsResponse> deleteAccounts(
      $5.AccountsLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$5.AccountsRequest> getAccountsById(
      $5.AccountsLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountsById, request, options: options);
  }

  $grpc.ResponseFuture<$5.AccountsList> getAllAccounts(
      $5.ResidenceAccountsLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$5.UnitAccountsResponse> getUnitAccountsById(
      $5.UnitAccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUnitAccountsById, request, options: options);
  }

  $grpc.ResponseFuture<$5.UnitAccountsResponse> getUserUnitAccountsById(
      $5.UnitAccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserUnitAccountsById, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.AccountsList> getUnitAllAccounts(
      $5.ResidenceAccountsLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUnitAllAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$5.AccountsList> getAllAccountsMaintanence(
      $5.ResidenceAccountsLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllAccountsMaintanence, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.AccountsList> getAllAccountsRenovation(
      $5.ResidenceAccountsLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllAccountsRenovation, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.AccountsList> getAllAccountsReport(
      $5.ResidenceAccountsLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllAccountsReport, request, options: options);
  }
}

abstract class RpcAccountsServiceBase extends $grpc.Service {
  $core.String get $name => 'accounts.RpcAccounts';

  RpcAccountsServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.AccountsRequest, $5.AccountsResponse>(
        'InsertAccounts',
        insertAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AccountsRequest.fromBuffer(value),
        ($5.AccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AccountsRequest, $5.AccountsResponse>(
        'UpdateAccounts',
        updateAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AccountsRequest.fromBuffer(value),
        ($5.AccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AccountsRequest, $5.AccountsResponse>(
        'StatusUpdateAccounts',
        statusUpdateAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AccountsRequest.fromBuffer(value),
        ($5.AccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AccountsRequest, $5.AccountsResponse>(
        'AdminStatusUpdateAccounts',
        adminStatusUpdateAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AccountsRequest.fromBuffer(value),
        ($5.AccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AccountsRequest, $5.AccountsResponse>(
        'UserStatusUpdateAccounts',
        userStatusUpdateAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AccountsRequest.fromBuffer(value),
        ($5.AccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AccountsLookupModel, $5.AccountsResponse>(
        'DeleteAccounts',
        deleteAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AccountsLookupModel.fromBuffer(value),
        ($5.AccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AccountsLookupModel, $5.AccountsRequest>(
        'GetAccountsById',
        getAccountsById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AccountsLookupModel.fromBuffer(value),
        ($5.AccountsRequest value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
            'GetAllAccounts',
            getAllAccounts_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceAccountsLookupModel.fromBuffer(value),
            ($5.AccountsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.UnitAccountsRequest, $5.UnitAccountsResponse>(
            'GetUnitAccountsById',
            getUnitAccountsById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.UnitAccountsRequest.fromBuffer(value),
            ($5.UnitAccountsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.UnitAccountsRequest, $5.UnitAccountsResponse>(
            'GetUserUnitAccountsById',
            getUserUnitAccountsById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.UnitAccountsRequest.fromBuffer(value),
            ($5.UnitAccountsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
            'GetUnitAllAccounts',
            getUnitAllAccounts_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceAccountsLookupModel.fromBuffer(value),
            ($5.AccountsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
            'GetAllAccountsMaintanence',
            getAllAccountsMaintanence_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceAccountsLookupModel.fromBuffer(value),
            ($5.AccountsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
            'GetAllAccountsRenovation',
            getAllAccountsRenovation_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceAccountsLookupModel.fromBuffer(value),
            ($5.AccountsList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ResidenceAccountsLookupModel, $5.AccountsList>(
            'GetAllAccountsReport',
            getAllAccountsReport_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ResidenceAccountsLookupModel.fromBuffer(value),
            ($5.AccountsList value) => value.writeToBuffer()));
  }

  $async.Future<$5.AccountsResponse> insertAccounts_Pre(
      $grpc.ServiceCall call, $async.Future<$5.AccountsRequest> request) async {
    return insertAccounts(call, await request);
  }

  $async.Future<$5.AccountsResponse> updateAccounts_Pre(
      $grpc.ServiceCall call, $async.Future<$5.AccountsRequest> request) async {
    return updateAccounts(call, await request);
  }

  $async.Future<$5.AccountsResponse> statusUpdateAccounts_Pre(
      $grpc.ServiceCall call, $async.Future<$5.AccountsRequest> request) async {
    return statusUpdateAccounts(call, await request);
  }

  $async.Future<$5.AccountsResponse> adminStatusUpdateAccounts_Pre(
      $grpc.ServiceCall call, $async.Future<$5.AccountsRequest> request) async {
    return adminStatusUpdateAccounts(call, await request);
  }

  $async.Future<$5.AccountsResponse> userStatusUpdateAccounts_Pre(
      $grpc.ServiceCall call, $async.Future<$5.AccountsRequest> request) async {
    return userStatusUpdateAccounts(call, await request);
  }

  $async.Future<$5.AccountsResponse> deleteAccounts_Pre($grpc.ServiceCall call,
      $async.Future<$5.AccountsLookupModel> request) async {
    return deleteAccounts(call, await request);
  }

  $async.Future<$5.AccountsRequest> getAccountsById_Pre($grpc.ServiceCall call,
      $async.Future<$5.AccountsLookupModel> request) async {
    return getAccountsById(call, await request);
  }

  $async.Future<$5.AccountsList> getAllAccounts_Pre($grpc.ServiceCall call,
      $async.Future<$5.ResidenceAccountsLookupModel> request) async {
    return getAllAccounts(call, await request);
  }

  $async.Future<$5.UnitAccountsResponse> getUnitAccountsById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UnitAccountsRequest> request) async {
    return getUnitAccountsById(call, await request);
  }

  $async.Future<$5.UnitAccountsResponse> getUserUnitAccountsById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UnitAccountsRequest> request) async {
    return getUserUnitAccountsById(call, await request);
  }

  $async.Future<$5.AccountsList> getUnitAllAccounts_Pre($grpc.ServiceCall call,
      $async.Future<$5.ResidenceAccountsLookupModel> request) async {
    return getUnitAllAccounts(call, await request);
  }

  $async.Future<$5.AccountsList> getAllAccountsMaintanence_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ResidenceAccountsLookupModel> request) async {
    return getAllAccountsMaintanence(call, await request);
  }

  $async.Future<$5.AccountsList> getAllAccountsRenovation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ResidenceAccountsLookupModel> request) async {
    return getAllAccountsRenovation(call, await request);
  }

  $async.Future<$5.AccountsList> getAllAccountsReport_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ResidenceAccountsLookupModel> request) async {
    return getAllAccountsReport(call, await request);
  }

  $async.Future<$5.AccountsResponse> insertAccounts(
      $grpc.ServiceCall call, $5.AccountsRequest request);
  $async.Future<$5.AccountsResponse> updateAccounts(
      $grpc.ServiceCall call, $5.AccountsRequest request);
  $async.Future<$5.AccountsResponse> statusUpdateAccounts(
      $grpc.ServiceCall call, $5.AccountsRequest request);
  $async.Future<$5.AccountsResponse> adminStatusUpdateAccounts(
      $grpc.ServiceCall call, $5.AccountsRequest request);
  $async.Future<$5.AccountsResponse> userStatusUpdateAccounts(
      $grpc.ServiceCall call, $5.AccountsRequest request);
  $async.Future<$5.AccountsResponse> deleteAccounts(
      $grpc.ServiceCall call, $5.AccountsLookupModel request);
  $async.Future<$5.AccountsRequest> getAccountsById(
      $grpc.ServiceCall call, $5.AccountsLookupModel request);
  $async.Future<$5.AccountsList> getAllAccounts(
      $grpc.ServiceCall call, $5.ResidenceAccountsLookupModel request);
  $async.Future<$5.UnitAccountsResponse> getUnitAccountsById(
      $grpc.ServiceCall call, $5.UnitAccountsRequest request);
  $async.Future<$5.UnitAccountsResponse> getUserUnitAccountsById(
      $grpc.ServiceCall call, $5.UnitAccountsRequest request);
  $async.Future<$5.AccountsList> getUnitAllAccounts(
      $grpc.ServiceCall call, $5.ResidenceAccountsLookupModel request);
  $async.Future<$5.AccountsList> getAllAccountsMaintanence(
      $grpc.ServiceCall call, $5.ResidenceAccountsLookupModel request);
  $async.Future<$5.AccountsList> getAllAccountsRenovation(
      $grpc.ServiceCall call, $5.ResidenceAccountsLookupModel request);
  $async.Future<$5.AccountsList> getAllAccountsReport(
      $grpc.ServiceCall call, $5.ResidenceAccountsLookupModel request);
}
