import 'package:casey_boyer_brand_web/services/strate_go/models/all.dart'
    as models;
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_board.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/api_button.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/goto_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StrategoGameWidgetGamePlaying extends StatelessWidget {
  final String? message;
  final models.Game? game;
  final bool maskGame;
  final List<models.Position> validPlacements;

  const StrategoGameWidgetGamePlaying({
    Key? key,
    this.message,
    this.game,
    this.maskGame = false,
    this.validPlacements = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text("Playing Stratego"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(message ?? "..."),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: (game == null || game!.board == null)
                    ? const Text("No board")
                    : GameBoardWidget(
                        board: game!.board!,
                        maskBoard: maskGame,
                        validPlacements: validPlacements,
                      ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ApiButton(
                      api: StrategoGameWidgetApi.ping,
                      text: "Ping",
                      margin: EdgeInsets.only(bottom: 8),
                    ),
                    ApiButton(
                      api: StrategoGameWidgetApi.deepPing,
                      text: "Deep Ping",
                      margin: EdgeInsets.only(bottom: 8),
                    ),
                    GotoButton(
                      goto: StrategoGameWidgetStatus.gameOver,
                      text: "GoTo: Game Over",
                    ),
                  ],
                ),
              ),
            ],
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
}
