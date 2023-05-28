import 'dart:math';

import 'package:dev_utils/src/features/cpf/cpf_model.dart';
import 'package:dev_utils/src/interfaces/i_cpf.dart';

final class CPF implements ICPFValidator, ICPFGenerator {
  // Random
  final Random _rand = Random.secure();

  List<int> _seed() {
    // Temp
    List<int> temp = [];
    for (int i = 0; i < 9; i++) {
      temp.add(_rand.nextInt(10));
    }

    return temp;
  }

  int _digitValidation({required List<int> numbers, required int weight}) {
    // Digits sum
    int sum = 0;

    for (int value in numbers) {
      sum += (value * weight);
      weight -= 1;
    }

    final digit = sum % 11 >= 2 ? 11 - (sum % 11) : 0;

    return digit;
  }

  String _formatting({required List<int> cpf}) =>
      cpf.toString().replaceAll(RegExp(r'[\s, \[\]"]'), '');

  // CPF Generator
  @override
  CPFModel generate() {
    // Populating the list
    List<int> cpf = _seed();

    cpf.add(_digitValidation(numbers: cpf, weight: 10));
    cpf.add(_digitValidation(numbers: cpf, weight: 11));

    return CPFModel(
      number: _formatting(cpf: cpf),
      isValid: true,
      isGenerated: true,
    );
  }

  // CPF Validator
  @override
  CPFModel validate({required String number}) {
    // If len is different than 11 or is not a number => false
    if (number.length != 11 || int.tryParse(number) == null) {
      return CPFModel(
        number: number,
        isValid: false,
        isGenerated: false,
      );
    }

    List<int> temp = number.split("").map((e) => int.parse(e)).toList();

    List<int> cpf = temp.sublist(0, 9);

    cpf.add(_digitValidation(numbers: cpf, weight: 10));
    cpf.add(_digitValidation(numbers: cpf, weight: 11));

    final bool isValid = (cpf.length == temp.length) &&
        cpf.every((element) => temp.contains(element));

    return CPFModel(
      number: number,
      isValid: isValid,
      isGenerated: false,
    );
  }
}
