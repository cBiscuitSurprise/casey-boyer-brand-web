//
//  Generated code. Do not modify.
//  source: strate.v1.proto
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
import 'strate.v1.pb.dart' as $1;

export 'strate.v1.pb.dart';

@$pb.GrpcServiceName('stratego.v1.StrateGo')
class StrateGoClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$0.Empty, $1.Pong>(
      '/stratego.v1.StrateGo/Ping',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Pong.fromBuffer(value));
  static final _$deepPing = $grpc.ClientMethod<$0.Empty, $1.Pong>(
      '/stratego.v1.StrateGo/DeepPing',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Pong.fromBuffer(value));
  static final _$longPing = $grpc.ClientMethod<$1.LongPingRequest, $1.Pong>(
      '/stratego.v1.StrateGo/LongPing',
      ($1.LongPingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Pong.fromBuffer(value));
  static final _$newGame = $grpc.ClientMethod<$1.NewGameRequest, $1.NewGameResponse>(
      '/stratego.v1.StrateGo/NewGame',
      ($1.NewGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.NewGameResponse.fromBuffer(value));
  static final _$listGames = $grpc.ClientMethod<$1.ListGamesRequest, $1.ListGamesResponse>(
      '/stratego.v1.StrateGo/ListGames',
      ($1.ListGamesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListGamesResponse.fromBuffer(value));
  static final _$getGame = $grpc.ClientMethod<$1.GetGameRequest, $1.GetGameResponse>(
      '/stratego.v1.StrateGo/GetGame',
      ($1.GetGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetGameResponse.fromBuffer(value));
  static final _$planGame = $grpc.ClientMethod<$1.PlanGameRequest, $1.PlanGameResponse>(
      '/stratego.v1.StrateGo/PlanGame',
      ($1.PlanGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlanGameResponse.fromBuffer(value));
  static final _$playGame = $grpc.ClientMethod<$1.PlayGameRequest, $1.PlayGameResponse>(
      '/stratego.v1.StrateGo/PlayGame',
      ($1.PlayGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlayGameResponse.fromBuffer(value));
  static final _$playGameWeb = $grpc.ClientMethod<$1.PlayGameRequest, $1.PlayGameWebResponse>(
      '/stratego.v1.StrateGo/PlayGameWeb',
      ($1.PlayGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlayGameWebResponse.fromBuffer(value));
  static final _$playGameWebListener = $grpc.ClientMethod<$1.PlayGameWebListenerRequest, $1.PlayGameResponse>(
      '/stratego.v1.StrateGo/PlayGameWebListener',
      ($1.PlayGameWebListenerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlayGameResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$1.NewGameResponse> newGame($1.NewGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newGame, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListGamesResponse> listGames($1.ListGamesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGames, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetGameResponse> getGame($1.GetGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGame, request, options: options);
  }

  $grpc.ResponseStream<$1.PlanGameResponse> planGame($async.Stream<$1.PlanGameRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$planGame, request, options: options);
  }

  $grpc.ResponseStream<$1.PlayGameResponse> playGame($async.Stream<$1.PlayGameRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$playGame, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlayGameWebResponse> playGameWeb($1.PlayGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$playGameWeb, request, options: options);
  }

  $grpc.ResponseStream<$1.PlayGameResponse> playGameWebListener($1.PlayGameWebListenerRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$playGameWebListener, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('stratego.v1.StrateGo')
abstract class StrateGoServiceBase extends $grpc.Service {
  $core.String get $name => 'stratego.v1.StrateGo';

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
    $addMethod($grpc.ServiceMethod<$1.NewGameRequest, $1.NewGameResponse>(
        'NewGame',
        newGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.NewGameRequest.fromBuffer(value),
        ($1.NewGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListGamesRequest, $1.ListGamesResponse>(
        'ListGames',
        listGames_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListGamesRequest.fromBuffer(value),
        ($1.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetGameRequest, $1.GetGameResponse>(
        'GetGame',
        getGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetGameRequest.fromBuffer(value),
        ($1.GetGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PlanGameRequest, $1.PlanGameResponse>(
        'PlanGame',
        planGame,
        true,
        true,
        ($core.List<$core.int> value) => $1.PlanGameRequest.fromBuffer(value),
        ($1.PlanGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PlayGameRequest, $1.PlayGameResponse>(
        'PlayGame',
        playGame,
        true,
        true,
        ($core.List<$core.int> value) => $1.PlayGameRequest.fromBuffer(value),
        ($1.PlayGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PlayGameRequest, $1.PlayGameWebResponse>(
        'PlayGameWeb',
        playGameWeb_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PlayGameRequest.fromBuffer(value),
        ($1.PlayGameWebResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PlayGameWebListenerRequest, $1.PlayGameResponse>(
        'PlayGameWebListener',
        playGameWebListener_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.PlayGameWebListenerRequest.fromBuffer(value),
        ($1.PlayGameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.Pong> ping_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return ping(call, await request);
  }

  $async.Future<$1.Pong> deepPing_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return deepPing(call, await request);
  }

  $async.Future<$1.NewGameResponse> newGame_Pre($grpc.ServiceCall call, $async.Future<$1.NewGameRequest> request) async {
    return newGame(call, await request);
  }

  $async.Future<$1.ListGamesResponse> listGames_Pre($grpc.ServiceCall call, $async.Future<$1.ListGamesRequest> request) async {
    return listGames(call, await request);
  }

  $async.Future<$1.GetGameResponse> getGame_Pre($grpc.ServiceCall call, $async.Future<$1.GetGameRequest> request) async {
    return getGame(call, await request);
  }

  $async.Future<$1.PlayGameWebResponse> playGameWeb_Pre($grpc.ServiceCall call, $async.Future<$1.PlayGameRequest> request) async {
    return playGameWeb(call, await request);
  }

  $async.Stream<$1.PlayGameResponse> playGameWebListener_Pre($grpc.ServiceCall call, $async.Future<$1.PlayGameWebListenerRequest> request) async* {
    yield* playGameWebListener(call, await request);
  }

  $async.Future<$1.Pong> ping($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Pong> deepPing($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$1.Pong> longPing($grpc.ServiceCall call, $async.Stream<$1.LongPingRequest> request);
  $async.Future<$1.NewGameResponse> newGame($grpc.ServiceCall call, $1.NewGameRequest request);
  $async.Future<$1.ListGamesResponse> listGames($grpc.ServiceCall call, $1.ListGamesRequest request);
  $async.Future<$1.GetGameResponse> getGame($grpc.ServiceCall call, $1.GetGameRequest request);
  $async.Stream<$1.PlanGameResponse> planGame($grpc.ServiceCall call, $async.Stream<$1.PlanGameRequest> request);
  $async.Stream<$1.PlayGameResponse> playGame($grpc.ServiceCall call, $async.Stream<$1.PlayGameRequest> request);
  $async.Future<$1.PlayGameWebResponse> playGameWeb($grpc.ServiceCall call, $1.PlayGameRequest request);
  $async.Stream<$1.PlayGameResponse> playGameWebListener($grpc.ServiceCall call, $1.PlayGameWebListenerRequest request);
}
