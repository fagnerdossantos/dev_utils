import 'package:dev_utils/src/password/models/password_model.dart';

class PasswordController {
  final PasswordModel _passwordGenerator;
  PasswordController(this._passwordGenerator);

  String generatePassword({int length = 8}) {
    return _passwordGenerator.generate(length);
  }
}
