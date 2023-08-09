import 'dart:convert';

class Project {
  final String name;
  final String? shortDescription;
  final String? longDescription;
  final List<String> tags;

  Project({
    required this.name,
    this.shortDescription,
    this.longDescription,
    this.tags = const [],
  });

  Project.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        shortDescription = json['shortDescription'],
        longDescription = json['longDescription'],
        tags = (json['tags'] as List?)?.map((i) => i as String).toList() ??
            const [];

  Map<String, dynamic> toJson() => {
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
