import 'dart:math';

base class PasswordHelpers {
  //
  final Random _rand = Random.secure();

  // Source
  final String _integers = "0123456789";
  final String _characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  final String _symbols = "!@#\$%^&*()_+-=";

  // Generate a mixed random password
  String mixedPassword() {
    //
    final String source = _integers + _characters + _symbols;

    return source[_rand.nextInt(source.length)];
  }

  // Generate char random password
  String charPassword() => _characters[_rand.nextInt(_characters.length)];

  // Generate numeric random password
  String numericPassword() => _integers[_rand.nextInt(_integers.length)];

  // Generate symbol random password
  String symbolPassword() => _symbols[_rand.nextInt(_symbols.length)];
}
