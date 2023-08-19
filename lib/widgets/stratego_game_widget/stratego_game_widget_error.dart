import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StrategoGameWidgetError extends StatelessWidget {
  final EdgeInsets _padding = const EdgeInsets.only(
    top: 12,
    bottom: 16,
    right: 24,
    left: 24,
  );

  const StrategoGameWidgetError({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SimpleDialog(
        title: const Text("Uh oh!"),
        children: [
          buildMessage(context),
          buildButtons(context),
        ],
      ),
    );
  }

  Widget buildMessage(context) {
    return const Padding(
      padding: EdgeInsets.only(left: 48, right: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.task_alt),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                  "Looks like we failed to connect to the game server. :("),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtons(context) {
    return Padding(
      padding: _padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () async {
                BlocProvider.of<StrategoGameWidgetBloc>(context)
                    .add(StrategoGameConnectEvent());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  foregroundColor: Theme.of(context).colorScheme.primary),
              child: const Text('Retry'),
            ),
          ),
        ],
      ),
    );
  }
}
