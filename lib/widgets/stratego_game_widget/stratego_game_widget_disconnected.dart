import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/stratego_game_widget_bloc.dart';

class StrategoGameWidgetDisconnected extends StatelessWidget {
  const StrategoGameWidgetDisconnected({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(children: [
          const Text("Disconnected. Please connect to the Strate-Go server."),
          ElevatedButton(
            onPressed: () => BlocProvider.of<StrategoGameWidgetBloc>(context)
                .add(StrategoGameConnectEvent()),
            child: const Text("Connect"),
          ),
        ]),
      ),
    );
  }
}
