import "dart:math";

class CNPJModel {
  // CNPJ list
  List<int> _cnpj = [];
  int get cnpj => int.parse(_cnpj.join());

  void seed() => _cnpj = List.generate(12, (_) => Random.secure().nextInt(10));

  void addDigits(
    int length1,
    int length2,
    int firstWeight,
    int secondWeight,
    int plus,
  ) {
    int sum = 0;
    int division = 0;
    int module = 0;

    for (int i = 0; i < length1; i++) {
      print("For func = ${_cnpj[i] * (firstWeight - i)}");
      sum += _cnpj[i] * (firstWeight - i);
    }

    for (int i = 0; i < length2; i++) {
      print("For func = ${_cnpj[i + plus] * (secondWeight - i)}");
      sum += _cnpj[i + plus] * (secondWeight - i);
    }

    division = (sum / 11).floor();
    module = sum - (11 * division);

    _cnpj.add(module < 2 ? 0 : (11 - module));
  }

  void clear() => _cnpj.clear();
}
