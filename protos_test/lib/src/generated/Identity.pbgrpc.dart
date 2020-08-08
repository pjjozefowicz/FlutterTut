///
//  Generated code. Do not modify.
//  source: Identity.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Requests/UserLoginRequest.pb.dart' as $0;
import 'Responses/AuthResponse.pb.dart' as $1;
import 'Requests/UserRegisterRequest.pb.dart' as $2;
import 'Requests/RefreshTokenRequest.pb.dart' as $3;
import 'Requests/GetUserRequest.pb.dart' as $4;
import 'Responses/UserResponse.pb.dart' as $5;
export 'Identity.pb.dart';

class IdentityClient extends $grpc.Client {
  static final _$loginUser =
      $grpc.ClientMethod<$0.UserLoginRequest, $1.AuthResponse>(
          '/Identity/LoginUser',
          ($0.UserLoginRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.AuthResponse.fromBuffer(value));
  static final _$registerUser =
      $grpc.ClientMethod<$2.UserRegisterRequest, $1.AuthResponse>(
          '/Identity/RegisterUser',
          ($2.UserRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.AuthResponse.fromBuffer(value));
  static final _$refreshToken =
      $grpc.ClientMethod<$3.RefreshTokenRequest, $1.AuthResponse>(
          '/Identity/RefreshToken',
          ($3.RefreshTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.AuthResponse.fromBuffer(value));
  static final _$getUser =
      $grpc.ClientMethod<$4.GetUserRequest, $5.UserResponse>(
          '/Identity/GetUser',
          ($4.GetUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.UserResponse.fromBuffer(value));

  IdentityClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.AuthResponse> loginUser($0.UserLoginRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$loginUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.AuthResponse> registerUser(
      $2.UserRegisterRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$registerUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.AuthResponse> refreshToken(
      $3.RefreshTokenRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$refreshToken, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.UserResponse> getUser($4.GetUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class IdentityServiceBase extends $grpc.Service {
  $core.String get $name => 'Identity';

  IdentityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserLoginRequest, $1.AuthResponse>(
        'LoginUser',
        loginUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserLoginRequest.fromBuffer(value),
        ($1.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserRegisterRequest, $1.AuthResponse>(
        'RegisterUser',
        registerUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UserRegisterRequest.fromBuffer(value),
        ($1.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RefreshTokenRequest, $1.AuthResponse>(
        'RefreshToken',
        refreshToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RefreshTokenRequest.fromBuffer(value),
        ($1.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetUserRequest, $5.UserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetUserRequest.fromBuffer(value),
        ($5.UserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.AuthResponse> loginUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserLoginRequest> request) async {
    return loginUser(call, await request);
  }

  $async.Future<$1.AuthResponse> registerUser_Pre($grpc.ServiceCall call,
      $async.Future<$2.UserRegisterRequest> request) async {
    return registerUser(call, await request);
  }

  $async.Future<$1.AuthResponse> refreshToken_Pre($grpc.ServiceCall call,
      $async.Future<$3.RefreshTokenRequest> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$5.UserResponse> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$1.AuthResponse> loginUser(
      $grpc.ServiceCall call, $0.UserLoginRequest request);
  $async.Future<$1.AuthResponse> registerUser(
      $grpc.ServiceCall call, $2.UserRegisterRequest request);
  $async.Future<$1.AuthResponse> refreshToken(
      $grpc.ServiceCall call, $3.RefreshTokenRequest request);
  $async.Future<$5.UserResponse> getUser(
      $grpc.ServiceCall call, $4.GetUserRequest request);
}
