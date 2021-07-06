
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage{
  static  SecureStorage? _instance;
  final _storage = FlutterSecureStorage();

  SecureStorage._internal();

  static SecureStorage getInstance(){
    if (_instance == null) {
      _instance = new SecureStorage._internal();
    }
    return _instance!;
  }

  Future writeData(String key, String value) async {
    var writeData = await _storage.write(key: key, value: value);

    return true;
  }

  Future readData(String key) async {
    var readData = await _storage.read(key: key);

    return readData;
  }
}