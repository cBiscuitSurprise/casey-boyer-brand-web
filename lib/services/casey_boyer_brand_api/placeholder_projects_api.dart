import 'dart:convert';

import 'package:casey_boyer_brand_web/model/project.dart';
import 'package:flutter/services.dart';

Future<String> listProjectsFromLocalFile() async {
  return await rootBundle.loadString("content/projects.json");
}

Future<String> getProjectDetailsFromLocalFile(Project project) async {
  String content = await rootBundle.loadString("content/${project.id}");

  return json.encode({"project": project.copyWith(longDescription: content)});
}
