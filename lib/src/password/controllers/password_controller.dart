import 'package:dev_utils/src/password/models/password_model.dart';

class PasswordController extends PasswordModel {

  String generatePassword({int length = 8}) {
    return generate(length);
  }
}
