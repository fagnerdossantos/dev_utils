import 'dart:convert';

import 'package:http/http.dart' as http;

class ZipCodeApiModel {
  Future<Map<String, dynamic>> fetch(String zipcode) async {
    // URL
    final Uri url = Uri.parse("https://viacep.com.br/ws/$zipcode/json/");

    try {
      // Requesting
      final http.Response response = await http.get(url);

      return response.statusCode == 200
          ? jsonDecode(response.body)
          : {"erro": true};
    } catch (e) {
      return {"erro": true};
    }
  }
}
