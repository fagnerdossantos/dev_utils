import 'dart:convert';

import 'package:dev_utils/src/features/zipcode/brazilian_zip_code_helper.dart';
import 'package:http/http.dart' as http;

import 'package:dev_utils/src/interfaces/i_zip_code.dart';

final class BrazilianZipCode extends BrazilianZipCodeHelper
    implements IZipCode {
  /// If validations == false or ZipCode does not exist
  /// return a map with key [error] == true
  ///
  /// Success example:
  /// ```dart
  /// final controller = ZipCodeApiController();
  /// final address = await controller.fetch("01001000");
  ///
  /// print(address) // {"cep": "01001-000", "logradouro": "Praça da Sé", ... },
  /// ```
  ///
  /// Error example:
  ///
  /// ``` dart
  /// final controller = ZipCodeApiController();
  /// final address = await controller.fetch("12345678");
  ///
  /// print(address) // {"error": true}
  /// ```

  // Fetching API
  @override
  Future<APIResponse> searchByCode({required String code}) async {
    // Check is code is a valid Zip Code
    final bool isCodeValid = validate(code: code);

    return isCodeValid
        ? await _connect(code)
        : {"error": " $code is Not a valid zip code"};
  }

  @override
  Future<List<APIResponse>> searchMultipleByCode(
      {required List<String> codes}) async {
    // Store addresses
    List<Future<APIResponse>> futures = [];

    for (String code in codes) {
      futures.add(searchByCode(code: code));
    }

    return await Future.wait(futures);
  }

  // API Connection to target
  Future<Map<String, dynamic>> _connect(String code) async {
    // URL
    final Uri url = Uri.parse("https://viacep.com.br/ws/$code/json/");

    try {
      // Requesting
      final http.Response response = await http.get(url);

      return response.statusCode == 200
          ? jsonDecode(response.body)
          : {"error": true};
    } catch (e) {
      return {"error": true};
    }
  }
}
