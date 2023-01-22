import 'package:dev_utils/src/cpf/models/cpf_model.dart';

class CPFController {
  final CPFModel _model;
  CPFController(this._model);

  Map<String, dynamic> generate() {
    _model.clearCPF();
    _model.seed();
    _model.calculateDigit(10);
    _model.calculateDigit(11);

    return {
      'isValid': true,
      'isUserGiven': false,
      'number': _model.number,
    };
  }

  Map<String, dynamic> validate(List<int> numbers) {
    _model.clearCPF();
    _model.setNumbers(numbers.sublist(0, 9));
    _model.calculateDigit(10);
    _model.calculateDigit(11);

    final int formatted = int.parse(numbers.join());

    return {
      'isValid': _model.number == formatted,
      'isUserGiven': true,
      'number': formatted,
    };
  }
}
