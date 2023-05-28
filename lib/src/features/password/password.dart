import 'package:dev_utils/src/features/password/password_helper.dart';
import 'package:dev_utils/src/features/password/password_type.dart';
import 'package:dev_utils/src/interfaces/i_password.dart';

final class Password extends PasswordHelpers implements IPassword {
  @override
  String generate(
      {int length = 8, PasswordType passType = PasswordType.isMixed}) {
    // Length must be grater than 3
    if (length < 4) length = 4;

    String password = "";

    for (int i = 0; i < length; i++) {
      switch (passType) {
        // All Items
        case PasswordType.isMixed:
          password += mixedPassword();

          break;

        // Just Chars
        case PasswordType.isChar:
          password += charPassword();

          break;

        // Just Numbers
        case PasswordType.isNumber:
          password += numericPassword();

          break;

        // Just Chars
        case PasswordType.isSymbol:
          password += symbolPassword();
          break;

        default:
      }
    }

    return password;
  }
}
