import 'package:dev_utils/src/roman/models/roman_model.dart';

class RomanController extends RomanModel {
  Map<String, dynamic> convertToRoman(int num) {
    String result = '';

    algs.forEach((key, value) {
      while (num >= value) {
        result += key;
        num -= value;
      }
    });

    return {"roman": result, "decimal": num};
  }
}
