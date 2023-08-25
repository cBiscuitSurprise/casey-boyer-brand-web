import 'package:casey_boyer_brand_web/bloc/user/user_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/app/app_widget.dart';
import 'package:casey_boyer_brand_web/widgets/app/bloc/app_widget_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import 'widgets/toggle_switch/bloc/toggle_switch_widget_bloc.dart';

void main() {
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      print('[${record.time}][${record.level.name}] ${record.message}');
    });
  } else {
    Logger.root.level = Level.WARNING;
  }

  runApp(const CaseyBoyerBrandApp());
}

class CaseyBoyerBrandApp extends StatelessWidget {
  const CaseyBoyerBrandApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (context) {
            var bloc = UserBloc();
            bloc.add(UserIdentifyEvent());
            return bloc;
          },
        ),
        BlocProvider<ToggleSwitchWidgetBloc>(
          create: (context) => ToggleSwitchWidgetBloc(),
        ),
        BlocProvider<AppWidgetBloc>(
          create: (context) => AppWidgetBloc(
            brightnessModeToggleBloc:
                BlocProvider.of<ToggleSwitchWidgetBloc>(context),
          ),
        ),
        BlocProvider<StrategoGameWidgetBloc>(
          create: (context) => StrategoGameWidgetBloc(
              userBloc: BlocProvider.of<UserBloc>(context)),
        ),
      ],
      child: const AppWidget(),
    );
  }
}
