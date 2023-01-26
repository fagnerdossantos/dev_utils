import 'package:dev_utils/src/cpf/models/cpf_model.dart';

class CPFController extends CPFModel {
  Map<String, dynamic> generate() {
    clearCPF();
    seed();
    calculateDigit(10);
    calculateDigit(11);

    return {
      'isValid': true,
      'isUserGiven': false,
      'number': number,
    };
  }

  Map<String, dynamic> validate(List<int> numbers) {
    clearCPF();
    setNumbers(numbers.sublist(0, 9));
    calculateDigit(10);
    calculateDigit(11);

    final int formatted = int.parse(numbers.join());

    return {
      'isValid': number == formatted,
      'isUserGiven': true,
      'number': formatted,
    };
  }
}
