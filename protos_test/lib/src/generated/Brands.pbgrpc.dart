///
//  Generated code. Do not modify.
//  source: Brands.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Requests/Queries/GetAllBrandsQuery.pb.dart' as $0;
import 'Responses/BrandResponse.pb.dart' as $1;
import 'Requests/BrandRequest.pb.dart' as $2;
import 'Requests/BrandCreateRequest.pb.dart' as $3;
import 'Requests/BrandUpdateRequest.pb.dart' as $4;
import 'google/protobuf/empty.pb.dart' as $5;
export 'Brands.pb.dart';

class BrandClient extends $grpc.Client {
  static final _$getAllBrands =
      $grpc.ClientMethod<$0.GetAllBrandsQuery, $1.BrandResponse>(
          '/Brand/GetAllBrands',
          ($0.GetAllBrandsQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BrandResponse.fromBuffer(value));
  static final _$getBrand =
      $grpc.ClientMethod<$2.BrandRequest, $1.BrandResponse>(
          '/Brand/GetBrand',
          ($2.BrandRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BrandResponse.fromBuffer(value));
  static final _$createBrand =
      $grpc.ClientMethod<$3.BrandCreateRequest, $1.BrandResponse>(
          '/Brand/CreateBrand',
          ($3.BrandCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BrandResponse.fromBuffer(value));
  static final _$updateBrand =
      $grpc.ClientMethod<$4.BrandUpdateRequest, $1.BrandResponse>(
          '/Brand/UpdateBrand',
          ($4.BrandUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BrandResponse.fromBuffer(value));
  static final _$deleteBrand = $grpc.ClientMethod<$2.BrandRequest, $5.Empty>(
      '/Brand/DeleteBrand',
      ($2.BrandRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Empty.fromBuffer(value));

  BrandClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$1.BrandResponse> getAllBrands(
      $0.GetAllBrandsQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAllBrands, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$1.BrandResponse> getBrand($2.BrandRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getBrand, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BrandResponse> createBrand(
      $3.BrandCreateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createBrand, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BrandResponse> updateBrand(
      $4.BrandUpdateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateBrand, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.Empty> deleteBrand($2.BrandRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteBrand, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BrandServiceBase extends $grpc.Service {
  $core.String get $name => 'Brand';

  BrandServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAllBrandsQuery, $1.BrandResponse>(
        'GetAllBrands',
        getAllBrands_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GetAllBrandsQuery.fromBuffer(value),
        ($1.BrandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BrandRequest, $1.BrandResponse>(
        'GetBrand',
        getBrand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BrandRequest.fromBuffer(value),
        ($1.BrandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BrandCreateRequest, $1.BrandResponse>(
        'CreateBrand',
        createBrand_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.BrandCreateRequest.fromBuffer(value),
        ($1.BrandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.BrandUpdateRequest, $1.BrandResponse>(
        'UpdateBrand',
        updateBrand_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.BrandUpdateRequest.fromBuffer(value),
        ($1.BrandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BrandRequest, $5.Empty>(
        'DeleteBrand',
        deleteBrand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BrandRequest.fromBuffer(value),
        ($5.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$1.BrandResponse> getAllBrands_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetAllBrandsQuery> request) async* {
    yield* getAllBrands(call, await request);
  }

  $async.Future<$1.BrandResponse> getBrand_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BrandRequest> request) async {
    return getBrand(call, await request);
  }

  $async.Future<$1.BrandResponse> createBrand_Pre($grpc.ServiceCall call,
      $async.Future<$3.BrandCreateRequest> request) async {
    return createBrand(call, await request);
  }

  $async.Future<$1.BrandResponse> updateBrand_Pre($grpc.ServiceCall call,
      $async.Future<$4.BrandUpdateRequest> request) async {
    return updateBrand(call, await request);
  }

  $async.Future<$5.Empty> deleteBrand_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BrandRequest> request) async {
    return deleteBrand(call, await request);
  }

  $async.Stream<$1.BrandResponse> getAllBrands(
      $grpc.ServiceCall call, $0.GetAllBrandsQuery request);
  $async.Future<$1.BrandResponse> getBrand(
      $grpc.ServiceCall call, $2.BrandRequest request);
  $async.Future<$1.BrandResponse> createBrand(
      $grpc.ServiceCall call, $3.BrandCreateRequest request);
  $async.Future<$1.BrandResponse> updateBrand(
      $grpc.ServiceCall call, $4.BrandUpdateRequest request);
  $async.Future<$5.Empty> deleteBrand(
      $grpc.ServiceCall call, $2.BrandRequest request);
}
