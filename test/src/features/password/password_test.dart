import 'package:dev_utils/src/features/password/password.dart';
import 'package:dev_utils/src/interfaces/i_password.dart';
import 'package:test/test.dart';
import 'package:dev_utils/src/features/password/password_type.dart';

void main() {
  //
  IPassword password = Password();

  // Regex patterns
  late final String isMixed, isChar, isNumeric, isSymbol;

  isMixed = r'^[a-zA-Z0-9!@#$%^&*()\-_=+[\]{};:,<.>]{8}$';
  isChar = r'^[a-zA-Z]{8}$';
  isNumeric = r'^[0-9]{8}$';
  isSymbol = r'^[!@#$%^&*()\-_=+[\]{};:,<.>.]{8}$';

  group('Password Tests', () {
    test('Generate password with default options', () {
      //
      final String result = password.generate();

      expect(result.length, equals(8));
      expect(result, isNotEmpty);
    });

    test('Generate password with specified length', () {
      //
      const int length = 12;

      String result = password.generate(length: length);

      expect(result.length, equals(length));
      expect(result, isNotEmpty);
    });

    test('Generate password of type isMixed', () {
      //
      String result = password.generate(passType: PasswordType.isMixed);

      expect(result, matches(isMixed));
    });

    test('Generate password of type isChar', () {
      //
      String result = password.generate(passType: PasswordType.isChar);

      expect(result, matches(isChar));
    });

    test('Generate password of type isNumber', () {
      //
      String result = password.generate(passType: PasswordType.isNumber);

      expect(result, matches(isNumeric));
    });

    test('Generate password of type isSymbol', () {
      //
      String result = password.generate(passType: PasswordType.isSymbol);

      expect(result, matches(isSymbol));
    });
  });
}
