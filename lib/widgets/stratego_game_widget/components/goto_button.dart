import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/stratego_game_widget_bloc.dart';

class GotoButton extends StatelessWidget {
  final StrategoGameWidgetStatus goto;
  final String text;
  final EdgeInsets margin;

  const GotoButton({
    Key? key,
    required this.goto,
    required this.text,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        onPressed: () => BlocProvider.of<StrategoGameWidgetBloc>(context)
            .add(StrategoGameGotoEvent(goto: goto)),
        child: Text(text),
      ),
    );
  }
}
