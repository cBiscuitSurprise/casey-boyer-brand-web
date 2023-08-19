import 'package:flutter/material.dart';

class StrategoGameWidgetLoading extends StatelessWidget {
  const StrategoGameWidgetLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
