import 'dart:convert';

import 'package:casey_boyer_brand_web/model/project.dart';

class ProjectGetDetailsRequest {
  Project project;

  ProjectGetDetailsRequest({required this.project});

  Map<String, String?> toJson() => {
        'project': json.encode(project),
      };
}

class ProjectGetDetailsResponse {
  bool success;
  String? message;

  Project? project;

  ProjectGetDetailsResponse({
    required this.success,
    this.message,
    this.project,
  });

  ProjectGetDetailsResponse.fromJson(Map<String, dynamic> json)
      : success = true,
        project =
            json['project'] == null ? null : Project.fromJson(json['project']);
}
