import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;

  const AppScaffold({
    Key? key,
    required this.child,
    this.drawer,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      drawer: drawer,
      body: child,
    );
  }
}
