import 'package:casey_boyer_brand_web/pages/projects.dart';
import 'package:casey_boyer_brand_web/util/string.dart';
import 'package:flutter/material.dart';

enum PageRoutes { home, projects }

List<(String, Widget Function(BuildContext)?)> buildRoutes(
    {PageRoutes? current}) {
  return [
    (
      PageRoutes.projects.name.capitalize(),
      (current == PageRoutes.projects) ? null : (context) => const Projects()
    )
  ];
}
