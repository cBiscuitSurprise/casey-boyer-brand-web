import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget_game_matching.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget_game_over.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget_game_planning.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget_game_playing.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget_lobby.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import 'bloc/stratego_game_widget_bloc.dart';
import 'stratego_game_widget_disconnected.dart';
import 'stratego_game_widget_loading.dart';

Logger logger = Logger('stratego_game_widget.dart');

class StrategoGameWidget extends StatelessWidget {
  const StrategoGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StrategoGameWidgetBloc, StrategoGameWidgetState>(
      builder: resolveWidgetForState,
    );
  }

  Widget resolveWidgetForState(
      BuildContext context, StrategoGameWidgetState state) {
    switch (state.status) {
      case StrategoGameWidgetStatus.serverDown:
        return const StrategoGameWidgetDisconnected();
      case StrategoGameWidgetStatus.serverUp:
        // resolve next state -- if active game-id is non null,
        // then figure out the game-state (planning, playing, over)
        // else lobby
        BlocProvider.of<StrategoGameWidgetBloc>(context)
            .add(StrategoGameGotoEvent(goto: StrategoGameWidgetStatus.lobby));
        return const StrategoGameWidgetLoading();
      case StrategoGameWidgetStatus.lobby:
        return const StrategoGameWidgetLobby();
      case StrategoGameWidgetStatus.gameMatching:
        return const StrategoGameWidgetGameMatching();
      case StrategoGameWidgetStatus.gamePlanning:
        return const StrategoGameWidgetGamePlanning();
      case StrategoGameWidgetStatus.gamePlaying:
        return StrategoGameWidgetGamePlaying(
          message: state.latestMessage,
          game: state.game,
        );
      case StrategoGameWidgetStatus.gameOver:
        return const StrategoGameWidgetGameOver();
      case StrategoGameWidgetStatus.loading:
        return const StrategoGameWidgetLoading();
      case StrategoGameWidgetStatus.error:
        return const StrategoGameWidgetError();
      default:
        return const SizedBox();
    }
  }
}
