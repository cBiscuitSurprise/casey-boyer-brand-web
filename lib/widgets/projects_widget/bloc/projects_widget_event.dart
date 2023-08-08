part of 'projects_widget_bloc.dart';

class ProjectsWidgetEvent {}

// #region data events
class ProjectsExpandEvent extends ProjectsWidgetEvent {}

class ProjectsCollapseEvent extends ProjectsWidgetEvent {}

class ProjectsReloadEvent extends ProjectsWidgetEvent {}

class ProjectsSelectEvent extends ProjectsWidgetEvent {
  final int index;

  ProjectsSelectEvent({required this.index});
}
// #endregion data events
