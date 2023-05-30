import 'package:dev_utils/src/features/roman/roman.dart';
import 'package:dev_utils/src/interfaces/i_roman.dart';
import 'package:test/test.dart';

void main() {
  //
  final IRoman roman = Roman();

  group('Roman Tests', () {
    test('Convert decimal to roman', () {
      // Values
      const int decimal = 1234;
      const String expectedRoman = 'MCCXXXIV';
      const int expectedNumber = decimal;

      var result = roman.decimalToRoman(decimal: decimal);

      expect(result.$1, equals(expectedRoman));
      expect(result.$2, equals(expectedNumber));
    });

    test('Convert roman to decimal', () {
      // Values
      const String romanAlg = 'MCCXXXIV';
      const int expectedDecimal = 1234;
      const String expectedRoman = romanAlg;

      var result = roman.romanToDecimal(roman: romanAlg);

      expect(result.$1, equals(expectedDecimal));
      expect(result.$2, equals(expectedRoman));
    });

    test('Convert invalid roman to decimal', () {
      final String romanAlg = 'IIII';

      var result = roman.romanToDecimal(roman: romanAlg);

      expect(result.$1, equals(-1));
      expect(result.$2, equals('Invalid format: $romanAlg'));
    });
  });
}
