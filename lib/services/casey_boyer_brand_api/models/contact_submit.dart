class ContactSubmitRequest {
  String? name;
  String? email;
  String? phone;
  String? message;

  ContactSubmitRequest({
    this.name,
    this.email,
    this.phone,
    this.message,
  });

  Map<String, String?> toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'message': message,
      };
}

class ContactSubmitResponse {
  bool success;
  String? message;

  ContactSubmitResponse({
    required this.success,
    this.message,
  });

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
      };
}
