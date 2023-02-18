import 'package:dev_utils/src/password/controllers/password_controller.dart';
import 'package:test/test.dart';

void main() {
  final controller = PasswordController();
  test('Expect password of specified length ...', () async {
    final String passwordTen = controller.generatePassword(length: 10);
    expect(passwordTen.length, 10);
  });

  test('Expect password to be default length ...', () async {
    final String passwordTen = controller.generatePassword();
    expect(passwordTen.length, 8);
  });

  test('Expect password to be default length passing -1 as len ...', () async {
    final String passwordTen = controller.generatePassword(length: -1);
    expect(passwordTen.length, 8);
  });
}
