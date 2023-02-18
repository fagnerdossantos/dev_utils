import 'dart:math';

class PasswordModel {
  final _rng = Random.secure();
  final _chars =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#\$%^&*()_+-=';

  String generatePassword({required int length}) {
    String password = '';
    for (int i = 0; i < length; i++) {
      password += _chars[_rng.nextInt(_chars.length)];
    }

    return password;
  }
}
