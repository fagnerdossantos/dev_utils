import 'package:dev_utils/src/id/controllers/id_controller.dart';
import 'package:test/test.dart';

void main() {
  final controller = IdController();
  test('Id has just numbers == true', () {
    // Configs
    RegExp digitRegex = RegExp(r'^\d{8}$');

    String generatedId = controller.generateID();

    expect(digitRegex.hasMatch(generatedId), true);
  });

  test('Id has just numbers == false', () {
    // Configs
    RegExp digitRegex = RegExp(r'^\d{9}$');

    String generatedId = controller.generateID();
    generatedId += '@';

    expect(digitRegex.hasMatch(generatedId), false);
  });
}
