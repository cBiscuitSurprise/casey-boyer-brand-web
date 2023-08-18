import 'dart:async';
import 'dart:convert';

import 'package:casey_boyer_brand_web/services/casey_boyer_brand_api/casey_boyer_brand_api_service.dart';
import 'package:casey_boyer_brand_web/services/casey_boyer_brand_api/models/projects_details.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import "package:casey_boyer_brand_web/model/project.dart";

part 'projects_widget_event.dart';
part 'projects_widget_state.dart';

Logger logger = Logger('contact_us_widget_bloc.dart');

class ProjectsWidgetBloc
    extends Bloc<ProjectsWidgetEvent, ProjectsWidgetState> {
  final CaseyBoyerBrandApiService apiService;

  ProjectsWidgetBloc()
      : apiService = CaseyBoyerBrandApiService(),
        super(const ProjectsWidgetState()) {
    // #region data events
    on<ProjectsCollapseEvent>(_handleCollapseEvent);
    on<ProjectsExpandEvent>(_handleExpandEvent);
    on<ProjectsReloadEvent>(_handleReloadEvent);
    on<ProjectsSelectEvent>(_handleSelectEvent);
    // #endregion data events

    // #region status events
    on<ProjectsWidgetErrorEvent>(_handleProjectWidgetErrorEvent);
    // #endregion status events
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

    try {
      // do reload
      var response = await apiService.listProjects();

      // TODO: move the project details to a ListBuilder call
      final List<Project?> projects = await Future.wait(
        response.projects.map((p) async {
          var response = await apiService
              .getProjectDetails(ProjectGetDetailsRequest(project: p));
          logger.info("HERE");
          return response.project;
        }).toList(),
        eagerError: true,
      ).onError((error, stackTrace) {
        logger.severe("Failed to load projects");
        logger.severe(error);
        logger.finer(stackTrace);
        return [];
      });

      logger.info("have projects $projects");

      final int? index = (projects.isNotEmpty) ? 0 : null;

      emit(state.copyWith(
          status: original,
          projects: projects.whereType<Project>().toList(),
          index: index));
    } catch (e) {
      _handleProjectWidgetErrorEvent(
        ProjectsWidgetErrorEvent(message: e.toString()),
        emit,
      );
    }
  }

  void _handleSelectEvent(
      ProjectsSelectEvent event, Emitter<ProjectsWidgetState> emit) async {
    emit(state.copyWith(index: event.index));
  }

  void _handleProjectWidgetErrorEvent(
      ProjectsWidgetErrorEvent event, Emitter<ProjectsWidgetState> emit) async {
    logger.severe(event.message);
    _setError(emit, event.message);
  }

  void _setError(Emitter<ProjectsWidgetState> emit, String message) {
    emit(state.copyWith(status: ProjectsWidgetStatus.error, error: message));
  }
}
