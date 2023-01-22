import 'dart:math';

class CPFModel {
  final Random _random = Random.secure();
  final List<int> _cpf = [];

  int get number => int.parse(_cpf.join());

  void seed() {
    for (int i = 0; i < 9; i++) {
      _cpf.add(_random.nextInt(10));
    }
  }

  void setNumbers(List<int> numbers) => _cpf.addAll(numbers);

  void calculateDigit(int weight) {
    int sum = 0;

    for (int value in _cpf) {
      sum += (value * weight);
      weight -= 1;
    }

    final int digit = sum % 11 >= 2 ? 11 - (sum % 11) : 0;

    _cpf.add(digit);
  }

  void clearCPF() => _cpf.clear();
}
