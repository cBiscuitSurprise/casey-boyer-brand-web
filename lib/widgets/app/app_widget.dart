import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../pages/home.dart';
import '../toggle_switch/bloc/toggle_switch_widget_bloc.dart';
import 'bloc/app_widget_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppWidgetBloc, AppWidgetState>(
      builder: resolveWidgetForState,
    );
  }

  Widget resolveWidgetForState(BuildContext context, AppWidgetState state) {
    return MaterialApp(
      title: 'Casey Boyer',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 40, 54, 24),
          secondary: const Color.fromARGB(255, 233, 237, 201),
          tertiary: const Color.fromARGB(255, 250, 237, 205),
          background: const Color.fromARGB(255, 254, 250, 224),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          brightness: Brightness.dark,
          primary: const Color.fromARGB(255, 254, 250, 224),
          onPrimary: const Color.fromARGB(255, 96, 108, 56),
          secondary: const Color.fromARGB(255, 96, 108, 56),
          tertiary: const Color.fromARGB(255, 221, 161, 94),
          background: const Color.fromARGB(255, 40, 54, 24),
          onBackground: const Color.fromARGB(255, 254, 250, 224),
        ),
      ),
      themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const MyHomePage(title: 'Casey Boyer'),
    );
  }
}
