import '../features/password/password_type.dart';

abstract interface class IPassword {
  String generate(
      {int length = 8, PasswordType passType = PasswordType.isMixed});
}
