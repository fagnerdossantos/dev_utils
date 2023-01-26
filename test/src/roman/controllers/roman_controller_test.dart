import 'package:dev_utils/src/roman/controllers/roman_controller.dart';
import 'package:test/test.dart';

void main() {
  final controller = RomanController();
  test('convertToRoman', () {
    expect(controller.convertToRoman(11), 'XI');
    expect(controller.convertToRoman(4), 'IV');
    expect(controller.convertToRoman(1000), 'M');
    expect(controller.convertToRoman(499), 'CDXCIX');
  });
}
