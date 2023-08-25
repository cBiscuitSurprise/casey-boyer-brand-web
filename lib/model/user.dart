import 'dart:convert';

class User {
  final String id;
  final String? name;

  User({
    required this.id,
    this.name,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  @override
  String toString() {
    return json.encode(toJson());
  }

  User copyWith({
    String? id,
    String? name,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
