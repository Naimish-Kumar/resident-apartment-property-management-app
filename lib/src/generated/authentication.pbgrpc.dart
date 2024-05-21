///
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'authentication.pb.dart' as $0;
export 'authentication.pb.dart';

class RpcAuthenticationClient extends $grpc.Client {
  static final _$appUserAuthenticate = $grpc.ClientMethod<
          $0.AuthenticationRequest, $0.AppAuthenticationResponse>(
      '/authentication.RpcAuthentication/AppUserAuthenticate',
      ($0.AuthenticationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AppAuthenticationResponse.fromBuffer(value));
  static final _$appGuardAuthenticate = $grpc.ClientMethod<
          $0.AuthenticationRequest, $0.AppAuthenticationResponse>(
      '/authentication.RpcAuthentication/AppGuardAuthenticate',
      ($0.AuthenticationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AppAuthenticationResponse.fromBuffer(value));
  static final _$appWorkerAuthenticate = $grpc.ClientMethod<
          $0.AuthenticationRequest, $0.AppAuthenticationResponse>(
      '/authentication.RpcAuthentication/AppWorkerAuthenticate',
      ($0.AuthenticationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AppAuthenticationResponse.fromBuffer(value));
  static final _$authenticate =
      $grpc.ClientMethod<$0.AuthenticationRequest, $0.AuthenticationResponse>(
          '/authentication.RpcAuthentication/Authenticate',
          ($0.AuthenticationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticationResponse.fromBuffer(value));
  static final _$refreshToken =
      $grpc.ClientMethod<$0.AuthenticationRequest, $0.AuthenticationResponse>(
          '/authentication.RpcAuthentication/RefreshToken',
          ($0.AuthenticationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticationResponse.fromBuffer(value));
  static final _$accountActivate =
      $grpc.ClientMethod<$0.AccountActivateRequest, $0.AccountActivateResponse>(
          '/authentication.RpcAuthentication/AccountActivate',
          ($0.AccountActivateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AccountActivateResponse.fromBuffer(value));
  static final _$forgotPassword =
      $grpc.ClientMethod<$0.ForgotPasswordRequest, $0.ForgotPasswordResponse>(
          '/authentication.RpcAuthentication/ForgotPassword',
          ($0.ForgotPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ForgotPasswordResponse.fromBuffer(value));
  static final _$resetPassword =
      $grpc.ClientMethod<$0.ResetPasswordRequest, $0.ResetPasswordResponse>(
          '/authentication.RpcAuthentication/ResetPassword',
          ($0.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResetPasswordResponse.fromBuffer(value));
  static final _$appDeviceTokenUpdate =
      $grpc.ClientMethod<$0.DeviceTokenRequest, $0.DeviceTokenResponse>(
          '/authentication.RpcAuthentication/AppDeviceTokenUpdate',
          ($0.DeviceTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeviceTokenResponse.fromBuffer(value));

  RpcAuthenticationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AppAuthenticationResponse> appUserAuthenticate(
      $0.AuthenticationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appUserAuthenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppAuthenticationResponse> appGuardAuthenticate(
      $0.AuthenticationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appGuardAuthenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppAuthenticationResponse> appWorkerAuthenticate(
      $0.AuthenticationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appWorkerAuthenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthenticationResponse> authenticate(
      $0.AuthenticationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthenticationResponse> refreshToken(
      $0.AuthenticationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccountActivateResponse> accountActivate(
      $0.AccountActivateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accountActivate, request, options: options);
  }

  $grpc.ResponseFuture<$0.ForgotPasswordResponse> forgotPassword(
      $0.ForgotPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$forgotPassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResetPasswordResponse> resetPassword(
      $0.ResetPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeviceTokenResponse> appDeviceTokenUpdate(
      $0.DeviceTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appDeviceTokenUpdate, request, options: options);
  }
}

abstract class RpcAuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'authentication.RpcAuthentication';

  RpcAuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthenticationRequest,
            $0.AppAuthenticationResponse>(
        'AppUserAuthenticate',
        appUserAuthenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticationRequest.fromBuffer(value),
        ($0.AppAuthenticationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthenticationRequest,
            $0.AppAuthenticationResponse>(
        'AppGuardAuthenticate',
        appGuardAuthenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticationRequest.fromBuffer(value),
        ($0.AppAuthenticationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthenticationRequest,
            $0.AppAuthenticationResponse>(
        'AppWorkerAuthenticate',
        appWorkerAuthenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticationRequest.fromBuffer(value),
        ($0.AppAuthenticationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthenticationRequest,
            $0.AuthenticationResponse>(
        'Authenticate',
        authenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticationRequest.fromBuffer(value),
        ($0.AuthenticationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthenticationRequest,
            $0.AuthenticationResponse>(
        'RefreshToken',
        refreshToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticationRequest.fromBuffer(value),
        ($0.AuthenticationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountActivateRequest,
            $0.AccountActivateResponse>(
        'AccountActivate',
        accountActivate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountActivateRequest.fromBuffer(value),
        ($0.AccountActivateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ForgotPasswordRequest,
            $0.ForgotPasswordResponse>(
        'ForgotPassword',
        forgotPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ForgotPasswordRequest.fromBuffer(value),
        ($0.ForgotPasswordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResetPasswordRequest, $0.ResetPasswordResponse>(
            'ResetPassword',
            resetPassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResetPasswordRequest.fromBuffer(value),
            ($0.ResetPasswordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeviceTokenRequest, $0.DeviceTokenResponse>(
            'AppDeviceTokenUpdate',
            appDeviceTokenUpdate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeviceTokenRequest.fromBuffer(value),
            ($0.DeviceTokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AppAuthenticationResponse> appUserAuthenticate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticationRequest> request) async {
    return appUserAuthenticate(call, await request);
  }

  $async.Future<$0.AppAuthenticationResponse> appGuardAuthenticate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticationRequest> request) async {
    return appGuardAuthenticate(call, await request);
  }

  $async.Future<$0.AppAuthenticationResponse> appWorkerAuthenticate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticationRequest> request) async {
    return appWorkerAuthenticate(call, await request);
  }

  $async.Future<$0.AuthenticationResponse> authenticate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticationRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$0.AuthenticationResponse> refreshToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticationRequest> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$0.AccountActivateResponse> accountActivate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountActivateRequest> request) async {
    return accountActivate(call, await request);
  }

  $async.Future<$0.ForgotPasswordResponse> forgotPassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ForgotPasswordRequest> request) async {
    return forgotPassword(call, await request);
  }

  $async.Future<$0.ResetPasswordResponse> resetPassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResetPasswordRequest> request) async {
    return resetPassword(call, await request);
  }

  $async.Future<$0.DeviceTokenResponse> appDeviceTokenUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeviceTokenRequest> request) async {
    return appDeviceTokenUpdate(call, await request);
  }

  $async.Future<$0.AppAuthenticationResponse> appUserAuthenticate(
      $grpc.ServiceCall call, $0.AuthenticationRequest request);
  $async.Future<$0.AppAuthenticationResponse> appGuardAuthenticate(
      $grpc.ServiceCall call, $0.AuthenticationRequest request);
  $async.Future<$0.AppAuthenticationResponse> appWorkerAuthenticate(
      $grpc.ServiceCall call, $0.AuthenticationRequest request);
  $async.Future<$0.AuthenticationResponse> authenticate(
      $grpc.ServiceCall call, $0.AuthenticationRequest request);
  $async.Future<$0.AuthenticationResponse> refreshToken(
      $grpc.ServiceCall call, $0.AuthenticationRequest request);
  $async.Future<$0.AccountActivateResponse> accountActivate(
      $grpc.ServiceCall call, $0.AccountActivateRequest request);
  $async.Future<$0.ForgotPasswordResponse> forgotPassword(
      $grpc.ServiceCall call, $0.ForgotPasswordRequest request);
  $async.Future<$0.ResetPasswordResponse> resetPassword(
      $grpc.ServiceCall call, $0.ResetPasswordRequest request);
  $async.Future<$0.DeviceTokenResponse> appDeviceTokenUpdate(
      $grpc.ServiceCall call, $0.DeviceTokenRequest request);
}
