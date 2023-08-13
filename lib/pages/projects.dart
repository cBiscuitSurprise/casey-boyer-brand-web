import 'package:casey_boyer_brand_web/widgets/projects_widget/bloc/projects_widget_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/projects_widget/projects_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectsWidgetBloc>(
      create: (context) => ProjectsWidgetBloc(),
      child: const ProjectsWidget(),
    );
  }
}
