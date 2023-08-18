import 'dart:convert';

class Project {
  final String id;
  final String? icon;
  final String name;
  final String? shortDescription;
  final String? longDescription;
  final List<String> tags;

  Project({
    required this.id,
    this.icon,
    required this.name,
    this.shortDescription,
    this.longDescription,
    this.tags = const [],
  });

  Project.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        icon = json['icon'],
        name = json['name'],
        shortDescription = json['shortDescription'],
        longDescription = json['longDescription'],
        tags = (json['tags'] as List?)?.map((i) => i as String).toList() ??
            const [];

  Map<String, dynamic> toJson() => {
        'id': id,
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

  Project copyWith({
    String? id,
    String? icon,
    String? name,
    String? shortDescription,
    String? longDescription,
    List<String>? tags,
  }) {
    return Project(
      id: id ?? this.id,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      shortDescription: shortDescription ?? this.shortDescription,
      longDescription: longDescription ?? this.longDescription,
      tags: tags ?? this.tags,
    );
  }
}
