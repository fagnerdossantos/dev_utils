import 'dart:math';

import 'package:dev_utils/src/features/cnpj/cnpj_helper.dart';
import 'package:dev_utils/src/features/cnpj/cnpj_model.dart';
import 'package:dev_utils/src/interfaces/i_cnpj.dart';

final class CNPJ extends CNPJHelper implements ICNPJ {
  //
  final Random _rand = Random.secure();

  // Used to populate CNPJ
  List<int> _seed() => List.generate(12, (_) => _rand.nextInt(10));

  // Adding valid digits
  List<int> _addDigits({
    required List<int> cnpj,
    required int firstLength,
    required int secondLength,
    required int firstWeight,
    required int secondWeight,
    required int plus,
  }) {
    int sum = 0;

    for (int i = 0; i < firstLength; i++) {
      sum += cnpj[i] * (firstWeight - i);
    }

    for (int i = 0; i < secondLength; i++) {
      sum += cnpj[i + plus] * (secondWeight - i);
    }

    int module = sum % 11;
    int digit = (module < 2) ? 0 : (11 - module);

    cnpj.add(digit);

    return cnpj;
  }

  String _formatting({required List<int> cnpj}) =>
      cnpj.toString().replaceAll(RegExp(r'[\s, \[\]"]'), '');

  @override
  CNPJModel generate() {
    // populating
    List<int> cnpj = _seed();

    // Calculating digits
    cnpj = _addDigits(
      cnpj: cnpj,
      firstLength: length1,
      secondLength: length2,
      firstWeight: weight1,
      secondWeight: weight2,
      plus: 4,
    );

    cnpj = _addDigits(
      cnpj: cnpj,
      firstLength: length3,
      secondLength: length4,
      firstWeight: weight3,
      secondWeight: weight4,
      plus: 5,
    );

    return CNPJModel(
      number: _formatting(cnpj: cnpj),
      isValid: true,
      isGenerated: true,
    );
  }
}
