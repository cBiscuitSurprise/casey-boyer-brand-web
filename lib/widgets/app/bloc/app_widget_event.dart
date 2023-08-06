part of 'app_widget_bloc.dart';

class AppWidgetEvent {}

// #region data events
class AppSetDarkModeEvent extends AppWidgetEvent {
  final bool darkMode;
  AppSetDarkModeEvent({this.darkMode = false});

  Map<String, String?> toJson() => {};
}
// #endregion data events
