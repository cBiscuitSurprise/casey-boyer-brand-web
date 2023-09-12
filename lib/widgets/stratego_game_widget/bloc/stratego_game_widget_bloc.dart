import 'dart:async';
import 'dart:js_interop';

import 'package:flutter/foundation.dart';

import 'package:casey_boyer_brand_web/bloc/user/user_bloc.dart';
import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as strategopb;
import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pbgrpc.dart';
import 'package:casey_boyer_brand_web/services/strate_go/models/all.dart'
    as models;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc/service_api.dart';
import 'package:logging/logging.dart';

import 'package:casey_boyer_brand_web/services/casey_boyer_brand_api/casey_boyer_brand_api_service.dart';
import 'package:casey_boyer_brand_web/services/strate_go/generated/google/protobuf/empty.pb.dart';
import 'package:casey_boyer_brand_web/services/strate_go/strate_go_service.dart';
import 'package:nanoid/nanoid.dart';

part 'stratego_game_widget_event.dart';
part 'stratego_game_widget_state.dart';

Logger logger = Logger('stratego_game_widget_bloc.dart');

// TODO: this could stand from a good refactor...
class StrategoGameWidgetBloc
    extends Bloc<StrategoGameWidgetEvent, StrategoGameWidgetState> {
  final UserBloc userBloc;
  final CaseyBoyerBrandApiService apiService;
  StrateGoService? gameService;
  StreamSubscription? userStateSubscription;

  Stream<PlayGameResponse>? playGameResponseStream;
  StreamSubscription<PlayGameResponse>? playGameReceiver;

  StrategoGameWidgetBloc({required this.userBloc})
      : apiService = CaseyBoyerBrandApiService(),
        super(StrategoGameWidgetState()) {
    userStateSubscription = userBloc.stream.listen(_handleUserStateChange);

    // #region data events
    on<StrategoGameConnectEvent>(_handleStrategoGameConectEvent);
    on<StrategoGameApiEvent>(_handleStrategoApiEvent);
    on<StrategoGamePieceDroppedEvent>(_handleStrategoPieceDroppedEvent);
    on<StrategoGamePieceMovedEvent>(_handleStrategoPieceMovedEvent);
    on<StrategoGameUserChangedEvent>(_handleStrategoUserChangedEvent);
    on<StrategoGameDisconnectEvent>(_handleStrategoGameDisconnectEvent);
    // #endregion data events

    // #region widget state events
    on<StrategoGameGotoEvent>(_handleStrategoGameGotoEvent);
    on<StrategoGameWidgetLoadingEvent>(_handleStrategoGameWidgetLoadingEvent);
    on<StrategoGameWidgetErrorEvent>(_handleStrategoGameWidgetErrorEvent);
    // #endregion widget state events
  }

  void _handleUserStateChange(UserState userState) async {
    logger.fine("Stratego game-widget, user changed ... ${userState.user?.id}");
    add(StrategoGameUserChangedEvent(userState: userState));
  }

  void _handlePlayGameResponse(PlayGameResponse event) {
    logger.finest("Stratego game-widget, play game event: $event");
    if (event.hasPieceMoved()) {
      logger.fine(
          "Stratego game-widget, piece moved ${event.pieceMoved.pieceId}");
      if (event.pieceMoved.hasPieceAttacked()) {
        logger.fine(
            "Stratego game-widget, piece attacked ${event.pieceMoved.pieceAttacked.attackerRank} -> ${event.pieceMoved.pieceAttacked.attackeeRank}");
        switch (event.pieceMoved.pieceAttacked.result) {
          case AttackResult.AttackResult_ATTACKEE_CAPTURED:
            // move attackee off board
            add(StrategoGamePieceMovedEvent(
              nonce: event.pieceMoved.nonce,
              pieceId: "attckee",
              from: models.Position.fromProtoPosition(event.pieceMoved.to),
            ));
            // move attacker into spot
            add(StrategoGamePieceMovedEvent.fromApiPieceMovedEvent(
                event.pieceMoved));
            break;
          case AttackResult.AttackResult_ATTACKER_CAPTURED:
            // move attacker off board
            add(StrategoGamePieceMovedEvent(
              nonce: event.pieceMoved.nonce,
              pieceId: event.pieceMoved.pieceId,
              from: models.Position.fromProtoPosition(event.pieceMoved.from),
            ));
            break;
          case AttackResult.AttackResult_BOTH_CAPTURED:
            // move attacker and attackee off board
            add(StrategoGamePieceMovedEvent(
              nonce: event.pieceMoved.nonce,
              pieceId: "attckee",
              from: models.Position.fromProtoPosition(event.pieceMoved.to),
            ));
            add(StrategoGamePieceMovedEvent(
              nonce: event.pieceMoved.nonce,
              pieceId: event.pieceMoved.pieceId,
              from: models.Position.fromProtoPosition(event.pieceMoved.from),
            ));
            break;
          case AttackResult.AttackResult_NO_CONTEST:
            // move piece
            add(StrategoGamePieceMovedEvent.fromApiPieceMovedEvent(
                event.pieceMoved));
            break;
        }
      }
      add(StrategoGamePieceMovedEvent.fromApiPieceMovedEvent(event.pieceMoved));
    } else if (event.validPlacements.isNotEmpty) {
      logger.fine("Stratego game-widget, piece picked");
    }
  }

  void _handleStrategoUserChangedEvent(StrategoGameUserChangedEvent event,
      Emitter<StrategoGameWidgetState> emit) async {
    emit(state.copyWith(userState: event.userState));
    if (event.userState.isUndefinedOrNull ||
        event.userState!.status.isAnonymous) {
      add(StrategoGameDisconnectEvent());
    }
  }

  void _handleStrategoGameConectEvent(StrategoGameConnectEvent event,
      Emitter<StrategoGameWidgetState> emit) async {
    add(StrategoGameWidgetLoadingEvent());
    if (state.userState.isDefinedAndNotNull &&
        state.userState!.user.isDefinedAndNotNull) {
      var connectResponse =
          await apiService.strateGoConnect(user: state.userState!.user!);

      if (connectResponse.url != null) {
        var url = (kDebugMode)
            ? "grpc-web://umpooter.boyer.consulting:1310"
            : connectResponse.url!;
        logger.fine("creating game service for url: $url");
        gameService = StrateGoService(Uri.parse(url), state.userState!.user!);
        emit(state.copyWith(
          status: StrategoGameWidgetStatus.serverUp,
          serverUrl: connectResponse.url,
        ));
      } else {
        add(StrategoGameWidgetErrorEvent(
          message: "failed to retrieve game server url (server error)",
        ));
      }
    } else {
      add(StrategoGameWidgetErrorEvent(
        message:
            "failed to retrieve game server url (anonymous user not allowed)",
      ));
    }
  }

  void _handleStrategoPieceDroppedEvent(StrategoGamePieceDroppedEvent event,
      Emitter<StrategoGameWidgetState> emit) {
    emit(state.copyWith(
      pieceInMotion: null,
    ));
  }

  void _handleStrategoApiEvent(
      StrategoGameApiEvent event, Emitter<StrategoGameWidgetState> emit) async {
    String requestId = nanoid();
    try {
      logger
          .fine("trying game API call - ${event.api} - request-id $requestId");
      if (gameService == null) {
        add(StrategoGameWidgetErrorEvent(
          message: "can't call API without first connecting to the server",
        ));
        return;
      }

      var originalStatus = state.status;
      // _setLoading(emit);

      CallOptions options = CallOptions(metadata: {
        "x-request-id": requestId,
        "x-stratego-user-id": state.userState?.user?.id ?? "anon"
      });
      String? message;
      DateTime? timestamp;
      if (event.api == StrategoGameWidgetApi.ping) {
        var response =
            await gameService?.ping(Empty.create(), options: options);
        message = response?.message;
        timestamp = response?.timestamp.toDateTime();
        emit(state.copyWith(
            status: originalStatus,
            latestMessage: message,
            latestTimestamp: timestamp));
      } else if (event.api == StrategoGameWidgetApi.deepPing) {
        var response = await gameService?.deepPing(Empty(), options: options);
        message = response?.message;
        timestamp = response?.timestamp.toDateTime();
        emit(state.copyWith(
            status: originalStatus,
            latestMessage: message,
            latestTimestamp: timestamp));
      } else if (event.api == StrategoGameWidgetApi.newGame) {
        var game = await gameService?.newGame(
          strategopb.NewGameRequest.create(),
          options: options,
        );
        emit(state.copyWith(
          status: _resolveGameState(game),
          game: game,
        ));
      } else if (event is StrategoGamePickPieceEvent) {
        if (gameService != null) {
          _checkPlayGameStream(options);
          logger.fine("requesting pick piece: ${event.from}");

          var response = await gameService!.playGameWeb(
            PlayGameRequest(
              gameId: state.game!.id,
              command: PlayGameRequestCommand.PlayGameRequestCommand_PICK_PIECE,
              selectedPiecePosition: event.from.toProtoPosition(),
            ),
            options: options,
          );

          if (response.hasError() && response.error.isNotEmpty) {
            logger.warning("pick-piece error: ${response.error}");
          }

          var validPlacements = response.validPlacements
              .map((p) => models.Position.fromProtoPosition(p))
              .toList();

          validPlacements.add(event.from);

          logger.finest("pick-piece valid-placements: $validPlacements");

          emit(state.copyWith(
            status: originalStatus,
            validPlacements: validPlacements,
            pieceInMotion: event.from,
          ));
        }
      } else if (event is StrategoGameRequestMoveEvent) {
        if (gameService != null) {
          _checkPlayGameStream(options);
          logger.fine("requesting move piece: ${event.from} -> ${event.to}");

          var response = await gameService!.playGameWeb(
            PlayGameRequest(
              gameId: state.game!.id,
              command: PlayGameRequestCommand.PlayGameRequestCommand_MOVE_PIECE,
              selectedPiecePosition: event.from.toProtoPosition(),
              selectedPlacement: event.to.toProtoPosition(),
            ),
            options: options,
          );

          if (response.hasError() && response.error.isNotEmpty) {
            logger.warning("move-piece error: ${response.error}");
          }

          emit(state.copyWith(
            status: originalStatus,
            pieceInMotion: null,
          ));
        }
      }
    } catch (e) {
      add(StrategoGameWidgetErrorEvent(message: "$e\nRequest ID: $requestId"));
    }
  }

  // handle piece-moved event from either player
  void _handleStrategoPieceMovedEvent(StrategoGamePieceMovedEvent event,
      Emitter<StrategoGameWidgetState> emit) async {
    if (state.game != null) {
      logger.fine("moving piece: ${event.from} -> ${event.to}");
      if (event.from == null) {
        // TODO: handle placement
      } else if (event.to == null) {
        state.game!.removePiece(event.from!);
      } else {
        state.game!.movePiece(event.from!, event.to!);
        emit(state.copyWith(
          status: StrategoGameWidgetStatus.gamePlaying,
          game: state.game,
        ));
      }
    }
  }

  void _handleStrategoGameDisconnectEvent(StrategoGameDisconnectEvent event,
      Emitter<StrategoGameWidgetState> emit) async {
    try {
      _setLoading(emit);
      if (gameService != null) {
        logger.fine("disconnecting ...");
        logger.finer("shutting down grpc channel ...");
        await gameService!.shutdown();
        logger.finer("grpc channel closed");
        gameService = null;
      }
      emit(state.copyWith(
        status: StrategoGameWidgetStatus.serverDown,
      ));
      logger.fine("disconnected");
    } catch (e) {
      add(StrategoGameWidgetErrorEvent(message: e.toString()));
    }
  }

  void _handleStrategoGameGotoEvent(StrategoGameGotoEvent event,
      Emitter<StrategoGameWidgetState> emit) async {
    emit(state.copyWith(status: event.goto));
  }

  void _handleStrategoGameWidgetLoadingEvent(
      StrategoGameWidgetLoadingEvent event,
      Emitter<StrategoGameWidgetState> emit) async {
    _setLoading(emit);
  }

  void _handleStrategoGameWidgetErrorEvent(StrategoGameWidgetErrorEvent event,
      Emitter<StrategoGameWidgetState> emit) async {
    logger.severe(event.message);
    _setError(emit, event.message);
  }

  StrategoGameWidgetStatus _resolveGameState(models.Game? game) {
    if (game == null) {
      return StrategoGameWidgetStatus.lobby;
    }

    switch (game.state) {
      case strategopb.GameState.GameState_SETUP:
        return StrategoGameWidgetStatus.gameMatching;
      case strategopb.GameState.GameState_PLAN:
        return StrategoGameWidgetStatus.gamePlanning;
      case strategopb.GameState.GameState_PLAY:
        return StrategoGameWidgetStatus.gamePlaying;
      case strategopb.GameState.GameState_END:
        return StrategoGameWidgetStatus.gameOver;
      case strategopb.GameState.GameState_ERROR:
        return StrategoGameWidgetStatus.error;
      default:
        return StrategoGameWidgetStatus.lobby;
    }
  }

  void _setLoading(Emitter<StrategoGameWidgetState> emit) {
    emit(state.copyWith(
      status: StrategoGameWidgetStatus.loading,
    ));
  }

  void _setError(Emitter<StrategoGameWidgetState> emit, String message) {
    emit(
        state.copyWith(status: StrategoGameWidgetStatus.error, error: message));
  }

  _checkPlayGameStream(CallOptions? options) {
    logger.fine("checking play-game stream");
    if (playGameResponseStream == null) {
      logger.fine("resetting stream controller");
      _cleanupPlayGameReceiver();
      playGameResponseStream = gameService!.playGameWebListener(
        PlayGameWebListenerRequest(gameId: state.game!.id),
        options: options,
      );
    }

    if (playGameReceiver == null) {
      logger.fine("listening for play game responses");
      playGameReceiver = playGameReceiver ??
          playGameResponseStream!.listen(
            _handlePlayGameResponse,
            onError: (err) {
              logger.severe(err);
            },
            onDone: () {
              logger.fine("closed play-game listener");
              _cleanupPlayGameReceiver();
            },
          );
    }
  }

  _cleanupPlayGameReceiver() {
    logger.fine("cleaning up play-game stream");
    playGameReceiver?.cancel();
    playGameReceiver = null;
    playGameResponseStream = null;
  }
}
