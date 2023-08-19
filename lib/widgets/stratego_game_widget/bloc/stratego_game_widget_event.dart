part of 'stratego_game_widget_bloc.dart';

class StrategoGameWidgetEvent {}

// #region data events
class StrategoGameConnectEvent extends StrategoGameWidgetEvent {}

class StrategoGameApiEvent extends StrategoGameWidgetEvent {
  String api;

  StrategoGameApiEvent({required this.api});
}

class StrategoGameDisconnectEvent extends StrategoGameWidgetEvent {}
// #endregion data events

// #region widget state events
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
