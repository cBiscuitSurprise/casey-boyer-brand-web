import 'package:casey_boyer_brand_web/model/user.dart';
import 'package:logging/logging.dart';

import 'package:grpc/grpc_or_grpcweb.dart';

import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.pbgrpc.dart';
import 'generated/google/protobuf/empty.pb.dart';

Logger logger = Logger('casey_boyer_brand_api_service.dart');

class StrateGoService {
  final User user;
  final GrpcOrGrpcWebClientChannel _channel;
  late StrateGoClient grpcClient;

  StrateGoService(Uri uri, this.user)
      : _channel = GrpcOrGrpcWebClientChannel.toSingleEndpoint(
          host: uri.host,
          port: uri.port,
          transportSecure: true,
        ) {
    grpcClient = StrateGoClient(_channel);
  }

  Future<void> shutdown() async {
    await _channel.shutdown();
  }

  Future<Pong> ping(Empty request, {CallOptions? options}) async {
    return await grpcClient.ping(request, options: options);
  }

  Future<Pong> deepPing(Empty request, {CallOptions? options}) async {
    return await grpcClient.deepPing(request, options: options);
  }
}
