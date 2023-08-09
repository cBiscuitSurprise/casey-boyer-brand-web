import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/contact_us_widget/bloc/contact_us_widget_bloc.dart';
import '../widgets/contact_us_widget/contact_us_widget.dart';
import '../widgets/toggle_switch/toggle_switch_widget.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<(String, Widget Function(BuildContext)?)> navigations;

  const AppBarComponent({
    Key? key,
    required this.title,
    this.navigations = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      actions: [
        ...List<Widget>.generate(navigations.length, (int index) {
          return buildNavigationButton(context, navigations[index]);
        }).toList(),
        const ToggleSwitchWidget(),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12, right: 12),
          child: ElevatedButton(
            onPressed: () {
              showDialog(context: context, builder: buildContactUsDialog);
            },
            child: const Text("Message"),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget buildContactUsDialog(context) {
    return BlocProvider<ContactUsWidgetBloc>(
      create: (context) => ContactUsWidgetBloc(),
      child: const ContactUsWidget(),
    );
  }

  Widget buildNavigationButton(
      context, (String, Widget Function(BuildContext)?) navigation) {
    return TextButton(
      onPressed: (navigation.$2 == null)
          ? null
          : () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: navigation.$2!));
            },
      child: Text(navigation.$1),
    );
  }
}
