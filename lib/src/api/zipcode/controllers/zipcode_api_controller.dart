import 'package:dev_utils/src/api/zipcode/models/zipcode_api_model.dart';
import 'package:dev_utils/src/api/zipcode/models/zipcode_validation_model.dart';

class ZipCodeApiController extends ZipCodeApiModel
    with ZipCodeValidationsModel {
  //
  /// Fetch API to get the address
  ///
  /// If validations == false or zipcode did not exist
  /// return a map with key [erro] == true
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
  /// print(address) // {"erro": true}
  /// ```
  @override
  Future<Map<String, dynamic>> fetch(String zipcode) async {
    final bool isvalid = validate(code: zipcode);

    return isvalid ? await super.fetch(zipcode) : {"erro": true};
  }
}
