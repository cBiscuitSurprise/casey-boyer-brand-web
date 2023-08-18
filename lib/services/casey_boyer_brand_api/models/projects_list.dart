import 'package:casey_boyer_brand_web/model/project.dart';

class ProjectsListRequest {}

class ProjectsListResponse {
  bool success;
  String? message;

  List<Project> projects;

  ProjectsListResponse({
    required this.success,
    this.message,
    this.projects = const [],
  });

  ProjectsListResponse.fromJson(Map<String, dynamic> json)
      : success = true,
        projects =
            json['projects'].map<Project>((p) => Project.fromJson(p)).toList();
}
