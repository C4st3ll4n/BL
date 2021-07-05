/// response : {"status":"ok","messages":[{"message":"Autenticação bem sucedida"}],"token":"SEU_TOKEN_AQUI","tokenExpiration":"10/03/2021 12:22:09"}

class Resposta {
  Response _response;

  Response get response => _response;

  Resposta({
      Response response}){
    _response = response;
}

  Resposta.fromJson(dynamic json) {
    _response = json["response"] != null ? Response.fromJson(json["response"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_response != null) {
      map["response"] = _response.toJson();
    }
    return map;
  }

}

/// status : "ok"
/// messages : [{"message":"Autenticação bem sucedida"}]
/// token : "SEU_TOKEN_AQUI"
/// tokenExpiration : "10/03/2021 12:22:09"

class Response {
  String _status;
  List<Messages> _messages;
  String _token;
  String _tokenExpiration;

  String get status => _status;
  List<Messages> get messages => _messages;
  String get token => _token;
  String get tokenExpiration => _tokenExpiration;

  Response({
      String status, 
      List<Messages> messages, 
      String token, 
      String tokenExpiration}){
    _status = status;
    _messages = messages;
    _token = token;
    _tokenExpiration = tokenExpiration;
}

  Response.fromJson(dynamic json) {
    _status = json["status"];
    if (json["messages"] != null) {
      _messages = [];
      json["messages"].forEach((v) {
        _messages.add(Messages.fromJson(v));
      });
    }
    _token = json["token"];
    _tokenExpiration = json["tokenExpiration"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = _status;
    if (_messages != null) {
      map["messages"] = _messages.map((v) => v.toJson()).toList();
    }
    map["token"] = _token;
    map["tokenExpiration"] = _tokenExpiration;
    return map;
  }

}

/// message : "Autenticação bem sucedida"

class Messages {
  String _message;

  String get message => _message;

  Messages({
      String message}){
    _message = message;
}

  Messages.fromJson(dynamic json) {
    _message = json["message"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["message"] = _message;
    return map;
  }

}