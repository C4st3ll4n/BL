class ApiResponse {
  Response response;

  ApiResponse({required this.response});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
   return ApiResponse(response: json['response']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response.toJson();
    }
    return data;
  }
}

class Response {
  String status;
  List<Messages> messages;
  String token;
  String tokenExpiration;

  Response({required this.status, required this.messages, required this.token, required this.tokenExpiration});

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      status: json['status'],
      messages: json['messages'],
      token: json['token'],
      tokenExpiration: json['tokenExpiration']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.messages != null) {
      data['messages'] = this.messages.map((v) => v.toJson()).toList();
    }
    data['token'] = this.token;
    data['tokenExpiration'] = this.tokenExpiration;
    return data;
  }
}

class Messages {
  String message;

  Messages({required this.message});

  factory Messages.fromJson(Map<String, dynamic> json) {
    return Messages (message: json['message']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    return data;
  }
}
