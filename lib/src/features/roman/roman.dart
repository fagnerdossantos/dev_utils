import 'package:dev_utils/src/features/roman/roman_helper.dart';
import 'package:dev_utils/src/interfaces/i_roman.dart';

final class Roman extends RomanHelper implements IRoman {
  // Convert from decimal to roman
  @override
  (String, int) decimalToRoman({required int decimal}) {
    //
    String result = '';
    String number = decimal.toString();

    source.forEach((key, value) {
      while (decimal >= value) {
        result += key;
        decimal -= value;
      }
    });

    return (result, int.parse(number));
  }

  // Convert from roman to decimal
  @override
  (int, String) romanToDecimal({required String roman}) {
    int result = 0;
    int prevValue = 0;
    int consecutiveCount = 1;

    for (int i = roman.length - 1; i >= 0; i--) {
      String currentChar = roman[i];
      int? value = source[currentChar];

      if (value == null) {
        return (-1, "Invalid format: $roman");
      }

      if (value < prevValue) {
        result -= value;
        consecutiveCount = 1;
      } else if (value == prevValue) {
        consecutiveCount++;
        if (consecutiveCount > 3) {
          return (-1, "Invalid format: $roman");
        }
        result += value;
      } else {
        result += value;
        prevValue = value;
        consecutiveCount = 1;
      }
    }

    return (result, roman);
  }
}
