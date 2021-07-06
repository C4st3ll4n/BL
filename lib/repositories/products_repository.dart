import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:marketeasy/models/api_response.dart';
import 'package:marketeasy/models/product.dart';
import 'package:marketeasy/services/SecureStorage.dart';
import 'package:provider/provider.dart';

class ProductsRepository {


  final _secureStorage = SecureStorage.getInstance();

  Future<List<Produtos>> getProducts() async{
    print('response.');
    var url = Uri.parse("http://servicosflex.rpinfo.com.br:9000/v2.0/produtounidade/listaprodutos/0/unidade/83402711000110");

    var token = await _secureStorage.readData('token');
    var response = await http
        .get(url,
        headers : {"token": '$token'}
        );
    List<Produtos> products;
print(response.body);
    var json = jsonDecode(response.body);

    products = (json['response']['produtos'] as List).map((produto) => Produtos.fromJson(produto)).toList();
    print(products);
    return products;
  }

}