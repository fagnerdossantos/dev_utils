import 'package:dev_utils/src/features/cpf/cpf.dart';
import 'package:dev_utils/src/features/cpf/cpf_model.dart';
import 'package:test/test.dart';
import 'package:dev_utils/src/interfaces/i_cpf.dart';

void main() {
  // Instancies
  final ICPFValidator cpfValidator = CPF();
  final ICPFGenerator cpfGenerator = CPF();

  group('CPF', () {
    test(
        'validate() should return a valid CPF model when given a valid CPF number',
        () {
      final String cpfNumber = '12345678909';

      final CPFModel result = cpfValidator.validate(number: cpfNumber);

      expect(result.number, equals(cpfNumber));
      expect(result.isValid, isTrue);
      expect(result.isGenerated, isFalse);
    });

    test(
        'validate() should return an invalid CPF model when given an invalid CPF number',
        () {
      final String cpfNumber = '18545637252';

      final CPFModel result = cpfValidator.validate(number: cpfNumber);

      expect(result.number, equals(cpfNumber));
      expect(result.isValid, isFalse);
      expect(result.isGenerated, isFalse);
    });

    test(
        'generate() should return a valid CPF model with a generated CPF number',
        () {
      final CPFModel result = cpfGenerator.generate();

      expect(result.number.length, equals(11));
      expect(result.isValid, isTrue);
      expect(result.isGenerated, isTrue);
    });
  });
}
