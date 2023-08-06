import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

part 'toggle_switch_widget_event.dart';
part 'toggle_switch_widget_state.dart';

Logger logger = Logger('contact_us_widget_bloc.dart');

class ToggleSwitchWidgetBloc
    extends Bloc<ToggleSwitchWidgetEvent, ToggleSwitchWidgetState> {
  ToggleSwitchWidgetBloc() : super(const ToggleSwitchWidgetState()) {
    // #region data events
    on<ToggleSwitchToggleEvent>(_handleToggleSwitchToggleEvent);
    // #endregion data events
  }

  void _handleToggleSwitchToggleEvent(ToggleSwitchToggleEvent event,
      Emitter<ToggleSwitchWidgetState> emit) async {
    if (state.state.isOn) {
      emit(state.copyWith(
        status: ToggleSwitchWidgetStates.off,
      ));
    } else {
      emit(state.copyWith(
        status: ToggleSwitchWidgetStates.on,
      ));
    }
  }
}
