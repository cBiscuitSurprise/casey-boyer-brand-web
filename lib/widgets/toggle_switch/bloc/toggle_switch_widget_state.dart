part of 'toggle_switch_widget_bloc.dart';

enum ToggleSwitchWidgetStates { off, on }

extension ToggleSwitchWidgetStatusX on ToggleSwitchWidgetStates {
  bool get isOn => this == ToggleSwitchWidgetStates.on;
}

class ToggleSwitchWidgetState {
  final ToggleSwitchWidgetStates state;

  const ToggleSwitchWidgetState({
    this.state = ToggleSwitchWidgetStates.off,
  });

  ToggleSwitchWidgetState copyWith({
    ToggleSwitchWidgetStates? status,
  }) {
    return ToggleSwitchWidgetState(
      state: status ?? this.state,
    );
  }
}
