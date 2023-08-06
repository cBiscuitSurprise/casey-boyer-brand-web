import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import '../../toggle_switch/bloc/toggle_switch_widget_bloc.dart';

part 'app_widget_event.dart';
part 'app_widget_state.dart';

Logger logger = Logger('contact_us_widget_bloc.dart');

class AppWidgetBloc extends Bloc<AppWidgetEvent, AppWidgetState> {
  final ToggleSwitchWidgetBloc brightnessModeToggleBloc;
  StreamSubscription? addSubscription;

  AppWidgetBloc({required this.brightnessModeToggleBloc})
      : super(const AppWidgetState()) {
    addSubscription = brightnessModeToggleBloc.stream.listen((state) {
      add(AppSetDarkModeEvent(darkMode: state.state.isOn));
    });
    // #region data events
    on<AppSetDarkModeEvent>(_handleSetDarkModeEvent);
    // #endregion data events
  }

  void _handleSetDarkModeEvent(
      AppSetDarkModeEvent event, Emitter<AppWidgetState> emit) async {
    emit(state.copyWith(
      isDarkMode: event.darkMode,
    ));
  }
}
