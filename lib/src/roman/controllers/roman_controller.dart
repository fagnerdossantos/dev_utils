import 'package:dev_utils/src/roman/models/roman_model.dart';

class RomanController {
  final RomanModel _model;
  RomanController(this._model);

  String convertToRoman(int num) {
    String result = '';

    _model.algs.forEach((key, value) {
      while (num >= value) {
        result += key;
        num -= value;
      }
    });

    return result;
  }
}
