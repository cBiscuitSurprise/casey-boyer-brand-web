part of 'projects_widget_bloc.dart';

enum ProjectsWidgetStatus { loading, expanded, collapsed }

extension ProjectsWidgetStatusX on ProjectsWidgetStatus {
  bool get isLoading => this == ProjectsWidgetStatus.loading;
  bool get isExpanded => this == ProjectsWidgetStatus.expanded;
  bool get isCollapsed => this == ProjectsWidgetStatus.collapsed;
}

class ProjectsWidgetState {
  final ProjectsWidgetStatus status;
  final List<Project> projects;
  final int? index;

  const ProjectsWidgetState({
    this.status = ProjectsWidgetStatus.loading,
    projects,
    this.index,
  }) : projects = projects ?? const [];

  ProjectsWidgetState copyWith({
    ProjectsWidgetStatus? status,
    List<Project>? projects,
    int? index,
  }) {
    return ProjectsWidgetState(
      status: status ?? this.status,
      projects: projects ?? this.projects,
      index: index ?? this.index,
    );
  }
}
