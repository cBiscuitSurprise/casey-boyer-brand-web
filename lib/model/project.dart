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
}
