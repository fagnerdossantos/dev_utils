import 'package:dev_utils/src/roman/controllers/roman_controller.dart';
import 'package:test/test.dart';

void main() {
  final controller = RomanController();
  test('convertToRoman', () {
    final Map<String, String> eleven = controller.convertToRoman(decimal: 11);
    expect(eleven["roman"], 'XI');

    final Map<String, String> four = controller.convertToRoman(decimal: 4);
    expect(four["roman"], 'IV');

    final Map<String, String> oneHundred =
        controller.convertToRoman(decimal: 1000);
    expect(oneHundred["roman"], 'M');
  });
}
