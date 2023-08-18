part of 'projects_widget_bloc.dart';

enum ProjectsWidgetStatus { loading, expanded, collapsed, error }

extension ProjectsWidgetStatusX on ProjectsWidgetStatus {
  bool get isLoading => this == ProjectsWidgetStatus.loading;
  bool get isExpanded => this == ProjectsWidgetStatus.expanded;
  bool get isCollapsed => this == ProjectsWidgetStatus.collapsed;
  bool get isError => this == ProjectsWidgetStatus.error;
}

class ProjectsWidgetState {
  final ProjectsWidgetStatus status;
  final List<Project> projects;
  final int? index;
  final String? error;

  const ProjectsWidgetState({
    this.status = ProjectsWidgetStatus.loading,
    projects,
    this.index,
    this.error,
  }) : projects = projects ?? const [];

  ProjectsWidgetState copyWith({
    ProjectsWidgetStatus? status,
    List<Project>? projects,
    int? index,
    String? error,
  }) {
    return ProjectsWidgetState(
      status: status ?? this.status,
      projects: projects ?? this.projects,
      index: index ?? this.index,
      error: error ?? this.error,
    );
  }
}
