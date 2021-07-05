import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:marketeasy/models/api_response.dart';

class AuthRepository {

  final _secureStorage = FlutterSecureStorage();

  Future login(String email, String password) async {
    var url = Uri.parse("http://servicosflex.rpinfo.com.br:9000/v1.1/auth");
    var response = await http
        .post(url, body: {"email": email, "senha": password});


    if (response.statusCode == 200 ||response.statusCode == 200) {
      var json = jsonDecode(response.body);
      ApiResponse apiResponse = ApiResponse.fromJson(json);

      _secureStorage.write(key:"token",value: apiResponse.response.token);

      return true;
    }
    return false;
  }
}