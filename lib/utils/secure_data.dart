import 'package:flutter_secure_storage/flutter_secure_storage.dart';

///This class is to save secure data.

class SecureData {
  //To only have one object.
  SecureData._();

  //Create object.
  final secureStorage = const FlutterSecureStorage();

  //Pass a key and value to save.
  void writeSecureData(String key, String value) async {
    await secureStorage.write(
      key: key,
      value: value,
    );
  }

  //Pass a key to read data.
  Future<dynamic> readSecureData(String key) async {
    return secureStorage.read(
      key: key,
    );
  }
}
