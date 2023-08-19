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
          Text("Playing @ $url"),
          Text(message ?? "..."),
          Row(
            children: [
              ElevatedButton(
                onPressed: () =>
                    BlocProvider.of<StrategoGameWidgetBloc>(context)
                        .add(StrategoGameApiEvent(api: "Ping")),
                child: const Text("Ping"),
              ),
              ElevatedButton(
                onPressed: () =>
                    BlocProvider.of<StrategoGameWidgetBloc>(context)
                        .add(StrategoGameApiEvent(api: "DeepPing")),
                child: const Text("DeepPing"),
              ),
              // ElevatedButton(
              //   onPressed: () =>
              //       BlocProvider.of<StrategoGameWidgetBloc>(context)
              //           .add(StrategoGameDisconnectEvent()),
              //   child: const Text("LongPing"),
              // )
            ],
          ),
          ElevatedButton(
            onPressed: () => BlocProvider.of<StrategoGameWidgetBloc>(context)
                .add(StrategoGameDisconnectEvent()),
            child: const Text("Disconnect"),
          ),
        ]),
      ),
    );
  }
}
