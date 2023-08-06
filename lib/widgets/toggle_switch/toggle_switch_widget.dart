import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/toggle_switch_widget_bloc.dart';

class ToggleSwitchWidget extends StatelessWidget {
  const ToggleSwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggleSwitchWidgetBloc, ToggleSwitchWidgetState>(
      builder: resolveWidgetForState,
    );
  }

  Widget resolveWidgetForState(
      BuildContext context, ToggleSwitchWidgetState state) {
    return Switch(
      // This bool value toggles the switch.
      value: state.state.isOn,
      activeColor: Theme.of(context).colorScheme.primary,
      inactiveThumbColor: Theme.of(context).colorScheme.primary,
      activeThumbImage:
          AssetImage('images/icons/dark_mode_FILL0_wght400_GRAD0_opsz48.png'),
      inactiveThumbImage:
          AssetImage('images/icons/light_mode_FILL0_wght400_GRAD0_opsz48.png'),
      onChanged: (bool value) {
        BlocProvider.of<ToggleSwitchWidgetBloc>(context)
            .add(ToggleSwitchToggleEvent());
      },
    );
  }
}
