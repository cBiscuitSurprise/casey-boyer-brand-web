import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/stratego_game_widget_bloc.dart';

class ApiButton extends StatelessWidget {
  final StrategoGameWidgetApi api;
  final String text;
  final EdgeInsets margin;

  const ApiButton({
    Key? key,
    required this.api,
    required this.text,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        onPressed: () => BlocProvider.of<StrategoGameWidgetBloc>(context)
            .add(StrategoGameApiEvent(api: api)),
        child: Text(text),
      ),
    );
  }
}
