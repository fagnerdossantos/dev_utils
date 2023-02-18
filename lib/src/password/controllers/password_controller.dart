import 'package:dev_utils/src/password/models/password_model.dart';

class PasswordController extends PasswordModel {
  /// Generates a Password with default length of 8
  ///
  /// User can provide a length
  ///
  /// If length iquals or lower than 0 returns default
  @override
  String generatePassword({int length = 8}) {
    if (length <= 0) {
      length = 8;
    }

    return super.generatePassword(length: length);
  }
}
