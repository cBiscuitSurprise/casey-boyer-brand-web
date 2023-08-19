import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/stratego_game_widget_bloc.dart';
import 'stratego_game_widget_disconnected.dart';
import 'stratego_game_widget_loading.dart';
import 'stratego_game_widget_playing.dart';

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
    if (state.status.isServerDown) {
      return const StrategoGameWidgetDisconnected();
    } else if (state.status.isServerUp) {
      if (state.serverUrl == null) {
        BlocProvider.of<StrategoGameWidgetBloc>(context).add(
            StrategoGameWidgetErrorEvent(
                message: "Can't connect to server (invalid url)."));
      }
      return StrategoGameWidgetPlaying(
        url: Uri.parse(state.serverUrl ?? "https://invalid.com/"),
        message: state.latestMessage,
      );
    } else if (state.status.isLoading) {
      return const StrategoGameWidgetLoading();
    } else if (state.status.isError) {
      return const StrategoGameWidgetError();
    } else {
      return const SizedBox();
    }
  }
}
