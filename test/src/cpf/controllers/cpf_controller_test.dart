import 'package:dev_utils/src/cpf/controllers/cpf_controller.dart';
import 'package:test/test.dart';
import 'package:dev_utils/src/cpf/models/cpf_model.dart';

void main() {
  group('CPFController', () {
    final CPFController controller = CPFController(CPFModel());

    test('Generate a valid CPF', () {
      final Map<String, dynamic> cpf = controller.generate();
      expect(cpf['isValid'], isTrue);
      expect(cpf['isUserGiven'], isFalse);
      expect(cpf['number'], isA<int>());
    });

    test('Return a result [cpf.isValid] == false', () {
      final Map<String, dynamic> cpf =
          controller.validate([1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1]);
      expect(cpf['isValid'], isFalse);
      expect(cpf['isUserGiven'], isTrue);
      expect(cpf['number'], isA<int>());
    });

    test('Return a result [cpf.isValid] == true', () {
      final Map<String, dynamic> cpf =
          controller.validate([7, 7, 9, 5, 3, 0, 9, 7, 0, 4, 4]);
      expect(cpf['isValid'], isTrue);
      expect(cpf['isUserGiven'], isTrue);
      expect(cpf['number'], isA<int>());
    });
  });
}
