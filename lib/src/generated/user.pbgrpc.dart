///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
import 'utility.pb.dart' as $1;
export 'user.pb.dart';

class RpcUserClient extends $grpc.Client {
  static final _$insertUser =
      $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
          '/user.RpcUser/InsertUser',
          ($0.UserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
          '/user.RpcUser/UpdateUser',
          ($0.UserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$deleteUser =
      $grpc.ClientMethod<$0.UserLookupModel, $0.UserResponse>(
          '/user.RpcUser/DeleteUser',
          ($0.UserLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$getUserById =
      $grpc.ClientMethod<$0.UserLookupModel, $0.UserRequest>(
          '/user.RpcUser/GetUserById',
          ($0.UserLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value));
  static final _$getAllUsers = $grpc.ClientMethod<$1.Empty, $0.UsersList>(
      '/user.RpcUser/GetAllUsers',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UsersList.fromBuffer(value));
  static final _$getAllResidentUsers =
      $grpc.ClientMethod<$0.ResidenceUserLookupModel, $0.UsersList>(
          '/user.RpcUser/GetAllResidentUsers',
          ($0.ResidenceUserLookupModel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UsersList.fromBuffer(value));

  RpcUserClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserResponse> insertUser($0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> updateUser($0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> deleteUser($0.UserLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserRequest> getUserById($0.UserLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserById, request, options: options);
  }

  $grpc.ResponseFuture<$0.UsersList> getAllUsers($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.UsersList> getAllResidentUsers(
      $0.ResidenceUserLookupModel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllResidentUsers, request, options: options);
  }
}

abstract class RpcUserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.RpcUser';

  RpcUserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'InsertUser',
        insertUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserLookupModel, $0.UserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserLookupModel.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserLookupModel, $0.UserRequest>(
        'GetUserById',
        getUserById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserLookupModel.fromBuffer(value),
        ($0.UserRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.UsersList>(
        'GetAllUsers',
        getAllUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.UsersList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResidenceUserLookupModel, $0.UsersList>(
        'GetAllResidentUsers',
        getAllResidentUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResidenceUserLookupModel.fromBuffer(value),
        ($0.UsersList value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserResponse> insertUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return insertUser(call, await request);
  }

  $async.Future<$0.UserResponse> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.UserResponse> deleteUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserLookupModel> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$0.UserRequest> getUserById_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserLookupModel> request) async {
    return getUserById(call, await request);
  }

  $async.Future<$0.UsersList> getAllUsers_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAllUsers(call, await request);
  }

  $async.Future<$0.UsersList> getAllResidentUsers_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResidenceUserLookupModel> request) async {
    return getAllResidentUsers(call, await request);
  }

  $async.Future<$0.UserResponse> insertUser(
      $grpc.ServiceCall call, $0.UserRequest request);
  $async.Future<$0.UserResponse> updateUser(
      $grpc.ServiceCall call, $0.UserRequest request);
  $async.Future<$0.UserResponse> deleteUser(
      $grpc.ServiceCall call, $0.UserLookupModel request);
  $async.Future<$0.UserRequest> getUserById(
      $grpc.ServiceCall call, $0.UserLookupModel request);
  $async.Future<$0.UsersList> getAllUsers(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.UsersList> getAllResidentUsers(
      $grpc.ServiceCall call, $0.ResidenceUserLookupModel request);
}
