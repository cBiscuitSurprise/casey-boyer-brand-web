import 'dart:convert';

class Project {
  final String? icon;
  final String name;
  final String? shortDescription;
  final String? longDescription;
  final List<String> tags;

  Project({
    this.icon,
    required this.name,
    this.shortDescription,
    this.longDescription,
    this.tags = const [],
  });

  Project.fromJson(Map<String, dynamic> json)
      : icon = json['icon'],
        name = json['name'],
        shortDescription = json['shortDescription'],
        longDescription = json['longDescription'],
        tags = (json['tags'] as List?)?.map((i) => i as String).toList() ??
            const [];

  Map<String, dynamic> toJson() => {
        'icon': icon,
        'name': name,
        'shortDescription': shortDescription,
        'longDescription': longDescription,
        'tags': tags,
      };

  @override
  String toString() {
    return json.encode(toJson());
  }
}
