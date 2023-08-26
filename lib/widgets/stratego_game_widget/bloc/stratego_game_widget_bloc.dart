import 'dart:async';
import 'dart:js_interop';

import 'package:casey_boyer_brand_web/bloc/user/user_bloc.dart';
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

class StrategoGameWidgetBloc
    extends Bloc<StrategoGameWidgetEvent, StrategoGameWidgetState> {
  final UserBloc userBloc;
  final CaseyBoyerBrandApiService apiService;
  StrateGoService? gameService;
  StreamSubscription? userStateSubscription;

  StrategoGameWidgetBloc({required this.userBloc})
      : apiService = CaseyBoyerBrandApiService(),
        super(StrategoGameWidgetState()) {
    userStateSubscription = userBloc.stream.listen(_handleUserStateChange);

    // #region data events
    on<StrategoGameConnectEvent>(_handleStrategoGameConectEvent);
    on<StrategoGameApiEvent>(_handleStrategoApiEvent);
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
        var url = connectResponse.url!;
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
      _setLoading(emit);

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
        emit(state.copyWith(
            status: StrategoGameWidgetStatus.gameMatching,
            latestMessage: message,
            latestTimestamp: timestamp));
      }
    } catch (e) {
      add(StrategoGameWidgetErrorEvent(message: "$e\nRequest ID: $requestId"));
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

  void _setLoading(Emitter<StrategoGameWidgetState> emit) {
    emit(state.copyWith(
      status: StrategoGameWidgetStatus.loading,
    ));
  }

  void _setError(Emitter<StrategoGameWidgetState> emit, String message) {
    emit(
        state.copyWith(status: StrategoGameWidgetStatus.error, error: message));
  }
}
