import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../pages/home.dart';
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
          primary: const Color.fromARGB(255, 0, 95, 184),
          secondary: const Color.fromARGB(255, 248, 248, 248),
          onSecondary: const Color.fromARGB(255, 59, 59, 59),
          tertiary: const Color.fromARGB(255, 9, 134, 88),
          background: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          brightness: Brightness.dark,
          primary: const Color.fromARGB(255, 0, 120, 212),
          onPrimary: const Color.fromARGB(255, 255, 255, 255),
          secondary: const Color.fromARGB(255, 24, 24, 24),
          onSecondary: const Color.fromARGB(255, 110, 118, 129),
          tertiary: const Color.fromARGB(255, 181, 206, 168),
          onTertiary: const Color.fromARGB(255, 24, 24, 24),
          background: const Color.fromARGB(255, 31, 31, 31),
          onBackground: const Color.fromARGB(255, 110, 118, 129),
        ),
      ),
      themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const MyHomePage(title: 'Casey Boyer'),
    );
  }
}
