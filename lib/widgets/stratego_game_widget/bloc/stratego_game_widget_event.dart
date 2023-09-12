part of 'stratego_game_widget_bloc.dart';

enum StrategoGameWidgetApi {
  ping,
  deepPing,
  newGame,
  listGames,
  getGame,
  planGame,
  playGame,
}

class StrategoGameWidgetEvent {}

// #region data events
class StrategoGameConnectEvent extends StrategoGameWidgetEvent {}

class StrategoGameUserChangedEvent extends StrategoGameWidgetEvent {
  final UserState? userState;

  StrategoGameUserChangedEvent({required this.userState});
}

class StrategoGamePieceDroppedEvent extends StrategoGameWidgetEvent {
  StrategoGamePieceDroppedEvent() : super();
}

class StrategoGameApiEvent extends StrategoGameWidgetEvent {
  StrategoGameWidgetApi api;

  StrategoGameApiEvent({required this.api});
}

class StrategoGamePickPieceEvent extends StrategoGameApiEvent {
  models.Position from;

  StrategoGamePickPieceEvent({required this.from})
      : super(api: StrategoGameWidgetApi.playGame);
}

class StrategoGameRequestMoveEvent extends StrategoGameApiEvent {
  models.Position from;
  models.Position to;

  StrategoGameRequestMoveEvent({required this.from, required this.to})
      : super(api: StrategoGameWidgetApi.playGame);
}

class StrategoGamePieceAttackedEvent extends StrategoGameWidgetEvent {
  final int attackerRank;
  final int attackeeRank;
  final List<String> removedPieceIds;

  StrategoGamePieceAttackedEvent({
    required this.attackerRank,
    required this.attackeeRank,
    required this.removedPieceIds,
  });
}

class StrategoGamePieceMovedEvent extends StrategoGameWidgetEvent {
  int nonce;
  String pieceId;
  models.Position? from;
  models.Position? to;

  StrategoGamePieceMovedEvent({
    required this.nonce,
    required this.pieceId,
    this.from,
    this.to,
  });

  StrategoGamePieceMovedEvent.fromApiPieceMovedEvent(
      strategopb.PieceMovedEvent event)
      : nonce = event.nonce,
        pieceId = event.pieceId,
        from = event.hasFrom()
            ? models.Position.fromProtoPosition(event.from)
            : null,
        to = event.hasTo() ? models.Position.fromProtoPosition(event.to) : null;
}

class StrategoGameDisconnectEvent extends StrategoGameWidgetEvent {}
// #endregion data events

// #region widget state events
class StrategoGameGotoEvent extends StrategoGameWidgetEvent {
  StrategoGameWidgetStatus goto;

  StrategoGameGotoEvent({required this.goto});
}

class StrategoGameWidgetLoadingEvent extends StrategoGameWidgetEvent {
  final int progress;

  StrategoGameWidgetLoadingEvent({
    progress,
  }) : progress = progress ?? 0;
}

class StrategoGameWidgetErrorEvent extends StrategoGameWidgetEvent {
  final String message;

  StrategoGameWidgetErrorEvent({
    message,
  }) : message = message ?? 'generic error';
}
// #endregion widget state events
