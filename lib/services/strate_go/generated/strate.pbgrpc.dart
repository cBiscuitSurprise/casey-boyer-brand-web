//
//  Generated code. Do not modify.
//  source: strate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/empty.pb.dart' as $0;
import 'strate.pb.dart' as $1;

export 'strate.pb.dart';

@$pb.GrpcServiceName('stratego.StrateGo')
class StrateGoClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$0.Empty, $1.Pong>(
      '/stratego.StrateGo/Ping',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Pong.fromBuffer(value));
  static final _$deepPing = $grpc.ClientMethod<$0.Empty, $1.Pong>(
      '/stratego.StrateGo/DeepPing',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Pong.fromBuffer(value));
  static final _$longPing = $grpc.ClientMethod<$1.LongPingRequest, $1.Pong>(
      '/stratego.StrateGo/LongPing',
      ($1.LongPingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Pong.fromBuffer(value));

  StrateGoClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.Pong> ping($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }

  $grpc.ResponseFuture<$1.Pong> deepPing($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deepPing, request, options: options);
  }

  $grpc.ResponseStream<$1.Pong> longPing($async.Stream<$1.LongPingRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$longPing, request, options: options);
  }
}

@$pb.GrpcServiceName('stratego.StrateGo')
abstract class StrateGoServiceBase extends $grpc.Service {
  $core.String get $name => 'stratego.StrateGo';

  StrateGoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Pong>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Pong value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Pong>(
        'DeepPing',
        deepPing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Pong value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LongPingRequest, $1.Pong>(
        'LongPing',
        longPing,
        true,
        true,
        ($core.List<$core.int> value) => $1.LongPingRequest.fromBuffer(value),
        ($1.Pong value) => value.writeToBuffer()));
  }

  $async.Future<$1.Pong> ping_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return ping(call, await request);
  }

  $async.Future<$1.Pong> deepPing_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return deepPing(call, await request);
  }

  $async.Future<$1.Pong> ping($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Pong> deepPing($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$1.Pong> longPing($grpc.ServiceCall call, $async.Stream<$1.LongPingRequest> request);
}
