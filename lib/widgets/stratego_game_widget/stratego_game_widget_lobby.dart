import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/api_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StrategoGameWidgetLobby extends StatelessWidget {
  const StrategoGameWidgetLobby({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text("Lobby"),
          ),
          const Padding(
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ApiButton(api: StrategoGameWidgetApi.newGame, text: "New Game"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: ElevatedButton(
              onPressed: () => BlocProvider.of<StrategoGameWidgetBloc>(context)
                  .add(StrategoGameDisconnectEvent()),
              child: const Text("Disconnect"),
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildGameButton(
      BuildContext context, StrategoGameWidgetApi api, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: ElevatedButton(
        onPressed: () => BlocProvider.of<StrategoGameWidgetBloc>(context)
            .add(StrategoGameApiEvent(api: api)),
        child: Text(text),
      ),
    );
  }
}
