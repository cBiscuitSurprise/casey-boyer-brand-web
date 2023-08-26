part of 'stratego_game_widget_bloc.dart';

enum StrategoGameWidgetApi {
  ping,
  deepPing,
  newGame,
}

class StrategoGameWidgetEvent {}

// #region data events
class StrategoGameConnectEvent extends StrategoGameWidgetEvent {}

class StrategoGameUserChangedEvent extends StrategoGameWidgetEvent {
  final UserState? userState;

  StrategoGameUserChangedEvent({required this.userState});
}

class StrategoGameApiEvent extends StrategoGameWidgetEvent {
  StrategoGameWidgetApi api;

  StrategoGameApiEvent({required this.api});
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
