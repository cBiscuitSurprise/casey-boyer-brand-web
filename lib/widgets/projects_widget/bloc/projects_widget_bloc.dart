import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import "package:casey_boyer_brand_web/model/project.dart";

part 'projects_widget_event.dart';
part 'projects_widget_state.dart';

Logger logger = Logger('contact_us_widget_bloc.dart');

Future<List<Project>> loadContentFromAssets() async {
  String configString = await rootBundle.loadString("content/projects.json");
  List config = json.decode(configString);

  return await Future.wait(config.map<Future<Project>>((i) async {
    i['longDescription'] =
        await rootBundle.loadString("content/${i['longDescription']}");
    return Project.fromJson(i);
  }).toList());
}

class ProjectsWidgetBloc
    extends Bloc<ProjectsWidgetEvent, ProjectsWidgetState> {
  ProjectsWidgetBloc() : super(const ProjectsWidgetState()) {
    // #region data events
    on<ProjectsCollapseEvent>(_handleCollapseEvent);
    on<ProjectsExpandEvent>(_handleExpandEvent);
    on<ProjectsReloadEvent>(_handleReloadEvent);
    on<ProjectsSelectEvent>(_handleSelectEvent);
    // #endregion data events
  }

  void _handleCollapseEvent(
      ProjectsCollapseEvent event, Emitter<ProjectsWidgetState> emit) async {
    emit(state.copyWith(status: ProjectsWidgetStatus.collapsed));
  }

  void _handleExpandEvent(
      ProjectsExpandEvent event, Emitter<ProjectsWidgetState> emit) async {
    emit(state.copyWith(status: ProjectsWidgetStatus.expanded));
  }

  void _handleReloadEvent(
      ProjectsReloadEvent event, Emitter<ProjectsWidgetState> emit) async {
    final ProjectsWidgetStatus original = state.status;
    emit(state.copyWith(status: ProjectsWidgetStatus.loading));

    // do reload
    final List<Project> projects = await loadContentFromAssets();

    final int? index = (projects.isNotEmpty) ? 0 : null;

    emit(state.copyWith(status: original, projects: projects, index: index));
  }

  void _handleSelectEvent(
      ProjectsSelectEvent event, Emitter<ProjectsWidgetState> emit) async {
    emit(state.copyWith(index: event.index));
  }
}
