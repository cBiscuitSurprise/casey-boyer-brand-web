import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StrategoGameWidgetPlaying extends StatelessWidget {
  final Uri url;
  final String? message;

  const StrategoGameWidgetPlaying({
    Key? key,
    required this.url,
    this.message,
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
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildGameButton(context, "Ping", "Ping"),
                buildGameButton(context, "DeepPing", "Deep Ping"),
                // buildGameButton(context, "LongPing", "Interactive Ping"),
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

  Widget buildGameButton(BuildContext context, String api, String text) {
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
