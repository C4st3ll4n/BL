// class ApiResponse {
//   Response1 response;
//
//   ApiResponse({required this.response});
//
//   factory ApiResponse.fromJson(Map<String, dynamic> json) {
//    return ApiResponse(response: json['response']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.response != null) {
//       data['response'] = this.response.toJson();
//     }
//     return data;
//   }
// }
//
// class Response1 {
//   String status;
//   List<Messages> messages;
//   String token;
//   String tokenExpiration;
//
//   Response1({required this.status, required this.messages, required this.token, required this.tokenExpiration});
//
//   factory Response1.fromJson(Map<String, dynamic> json) {
//     return Response1(
//       status: json['status'],
//       messages: json['messages'],
//       token: json['token'],
//       tokenExpiration: json['tokenExpiration']
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.messages != null) {
//       data['messages'] = this.messages.map((v) => v.toJson()).toList();
//     }
//     data['token'] = this.token;
//     data['tokenExpiration'] = this.tokenExpiration;
//     return data;
//   }
// }
//
// class Messages {
//   String message;
//
//   Messages({required this.message});
//
//   factory Messages.fromJson(Map<String, dynamic> json) {
//     return Messages (message: json['message']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message;
//     return data;
//   }
// }


class ApiResponse {
  late Response response;

  ApiResponse({required this.response});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    response =  new Response.fromJson(json['response']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['response'] = this.response.toJson();
    return data;
  }
}

class Response {
  late String status;
  late List<Messages> messages;
  late String token;
  late String tokenExpiration;

  Response({required this.status, required this.messages, required this.token, required this.tokenExpiration});

  Response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
      // messages = new List<Messages>();
    messages = List.filled(1, new Messages(message: 'message'), growable: true);
      json['messages'].forEach((v) {
        messages.add(new Messages.fromJson(v));
      });

    token = json['token'];
    tokenExpiration = json['tokenExpiration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
      data['messages'] = this.messages.map((v) => v.toJson()).toList();
    data['token'] = this.token;
    data['tokenExpiration'] = this.tokenExpiration;
    return data;
  }
}

class Messages {
  late String message;

  Messages({required this.message});

  Messages.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    return data;
  }
}
