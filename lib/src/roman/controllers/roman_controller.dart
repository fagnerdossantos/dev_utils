import 'package:dev_utils/src/roman/models/roman_model.dart';

class RomanController extends RomanModel {
  String convertToRoman(int num) {
    String result = '';

    algs.forEach((key, value) {
      while (num >= value) {
        result += key;
        num -= value;
      }
    });

    return result;
  }
}
