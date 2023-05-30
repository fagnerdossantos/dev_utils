import 'package:dev_utils/src/features/cnpj/cnpj.dart';
import 'package:dev_utils/src/features/cnpj/cnpj_model.dart';
import 'package:dev_utils/src/interfaces/i_cnpj.dart';
import 'package:test/test.dart';

void main() {
  group('CNPJ', () {
    // Instance
    final ICNPJ cnpj = CNPJ();

    test('generate() should return a valid CNPJ', () {
      //
      final CNPJModel result = cnpj.generate();

      expect(result, isA<CNPJModel>());
      expect(result.number, matches(RegExp(r'^\d{14}$')));
      expect(result.isValid, isTrue);
      expect(result.isGenerated, isTrue);
    });

    test('generate() should generate unique CNPJs', () {
      //
      final CNPJModel cnpj1 = cnpj.generate();
      final CNPJModel cnpj2 = cnpj.generate();

      expect(cnpj1.number, isNot(equals(cnpj2.number)));
    });
  });
}
