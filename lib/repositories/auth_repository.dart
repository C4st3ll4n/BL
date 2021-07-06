import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:marketeasy/models/api_response.dart';
import 'package:marketeasy/services/SecureStorage.dart';

class AuthRepository {

  final _secureStorage = SecureStorage.getInstance();

  Future login(String user, String password) async {
    var url = Uri.parse("http://servicosflex.rpinfo.com.br:9000/v1.1/auth");

    final auth = jsonEncode({"usuario": "100000",
      "senha": "123456"});


    var response = await http
        .post(url,
    headers : {"Content-type": "application/json"}
    , body: auth);


    if (response.statusCode == 200 ||response.statusCode == 200) {
      var json = jsonDecode(response.body);
      ApiResponse apiResponse = ApiResponse.fromJson(json);
      _secureStorage.writeData("token", apiResponse.response.token);

      return true;
    }else{

    }
    return false;
  }
}