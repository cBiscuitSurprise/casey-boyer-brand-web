import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/util/goto_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StrategoGameWidgetGamePlanning extends StatelessWidget {
  const StrategoGameWidgetGamePlanning({
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
            child: Text("Plan your game..."),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GotoButton(
                  goto: StrategoGameWidgetStatus.gamePlaying,
                  text: "GoTo: Game Playing",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 8),
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
}
