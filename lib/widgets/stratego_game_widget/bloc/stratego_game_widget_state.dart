part of 'stratego_game_widget_bloc.dart';

enum StrategoGameWidgetStatus {
  initial,
  serverDown,
  serverUp,
  lobby,
  gameMatching,
  gamePlanning,
  gamePlaying,
  gameOver,
  error,
  loading
}

extension StrategoGameWidgetStatusX on StrategoGameWidgetStatus {
  bool get isInitial => this == StrategoGameWidgetStatus.initial;
  bool get isServerDown => this == StrategoGameWidgetStatus.serverDown;
  bool get isServerUp => this == StrategoGameWidgetStatus.serverUp;
  bool get isLobby => this == StrategoGameWidgetStatus.lobby;
  bool get isGameMatching => this == StrategoGameWidgetStatus.gameMatching;
  bool get isGamePlanning => this == StrategoGameWidgetStatus.gamePlanning;
  bool get isGamePlaying => this == StrategoGameWidgetStatus.gamePlaying;
  bool get isGameOver => this == StrategoGameWidgetStatus.gameOver;
  bool get isError => this == StrategoGameWidgetStatus.error;
  bool get isLoading => this == StrategoGameWidgetStatus.loading;
}

const undefPosition = models.Position(-1, -1);

class StrategoGameWidgetState {
  final StrategoGameWidgetStatus status;
  final String? error;
  final String? serverUrl;
  final String? latestMessage;
  final DateTime? latestTimestamp;

  final UserState? userState;

  final models.Game? game;
  final List<models.Position> validPlacements;
  final models.Position? pieceInMotion;

  StrategoGameWidgetState({
    this.status = StrategoGameWidgetStatus.serverDown,
    this.error,
    this.serverUrl,
    this.latestMessage,
    this.latestTimestamp,
    this.userState,
    this.game,
    this.pieceInMotion,
    this.validPlacements = const [],
  });

  StrategoGameWidgetState copyWith({
    StrategoGameWidgetStatus? status,
    String? error,
    String? serverUrl,
    String? latestMessage,
    DateTime? latestTimestamp,
    UserState? userState,
    models.Game? game,
    List<models.Position>? validPlacements,
    models.Position? pieceInMotion = undefPosition,
  }) {
    return StrategoGameWidgetState(
      status: status ?? this.status,
      error: error ?? this.error,
      serverUrl: serverUrl ?? this.serverUrl,
      latestMessage: latestMessage ?? this.latestMessage,
      latestTimestamp: latestTimestamp ?? this.latestTimestamp,
      userState: userState ?? this.userState,
      game: game ?? this.game,
      validPlacements: validPlacements ?? this.validPlacements,
      pieceInMotion:
          pieceInMotion == undefPosition ? this.pieceInMotion : pieceInMotion,
    );
  }
}
