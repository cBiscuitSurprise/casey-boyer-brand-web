import 'package:casey_boyer_brand_web/model/user.dart';
import 'package:casey_boyer_brand_web/services/strate_go/models/game_info.dart';
import 'package:grpc/service_api.dart';
import 'package:logging/logging.dart';

import 'package:grpc/grpc_or_grpcweb.dart';

import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pbgrpc.dart'
    as strategopb;
import 'package:casey_boyer_brand_web/services/strate_go/models/all.dart'
    as models;
import 'generated/google/protobuf/empty.pb.dart';

Logger logger = Logger('casey_boyer_brand_api_service.dart');

class StrateGoService {
  final User user;
  final GrpcOrGrpcWebClientChannel _channel;
  late strategopb.StrateGoClient grpcClient;

  StrateGoService(Uri uri, this.user)
      : _channel = GrpcOrGrpcWebClientChannel.toSingleEndpoint(
          host: uri.host,
          port: uri.port,
          transportSecure: true,
        ) {
    grpcClient = strategopb.StrateGoClient(_channel);
  }

  Future<void> shutdown() async {
    await _channel.shutdown();
  }

  Future<strategopb.Pong> ping(Empty request, {CallOptions? options}) async {
    return await grpcClient.ping(request, options: options);
  }

  Future<strategopb.Pong> deepPing(Empty request,
      {CallOptions? options}) async {
    return await grpcClient.deepPing(request, options: options);
  }

  Future<models.Game> newGame(strategopb.NewGameRequest request,
      {CallOptions? options}) async {
    var response = await grpcClient.newGame(request, options: options);
    return models.Game(game: response.game);
  }

  Future<List<GameInfo>> listGames(strategopb.ListGamesRequest request,
      {CallOptions? options}) async {
    var response = await grpcClient.listGames(request, options: options);
    return response.games.map((i) => GameInfo(info: i)).toList();
  }

  Future<models.Game> getGame(strategopb.GetGameRequest request,
      {CallOptions? options}) async {
    var response = await grpcClient.getGame(request, options: options);
    return models.Game(game: response.game);
  }

  Future<strategopb.PlayGameWebResponse> playGameWeb(
      strategopb.PlayGameRequest request,
      {CallOptions? options}) async {
    return await grpcClient.playGameWeb(request, options: options);
  }

  Stream<strategopb.PlayGameResponse> playGameWebListener(
      strategopb.PlayGameWebListenerRequest request,
      {CallOptions? options}) {
    logger.finest("starting play game listener");
    return grpcClient.playGameWebListener(request, options: options);
  }
}
