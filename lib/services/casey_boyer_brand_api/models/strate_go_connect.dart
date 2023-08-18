class StrateGoConnectRequest {}

class StrateGoConnectResponse {
  bool success;
  String? url;

  StrateGoConnectResponse({
    required this.success,
    this.url,
  });

  StrateGoConnectResponse.fromJson(Map<String, dynamic> json)
      : success = true,
        url = json['name'];
}
