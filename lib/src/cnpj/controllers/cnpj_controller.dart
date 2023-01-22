import 'package:dev_utils/src/cnpj/models/cnpj_model.dart';

class CNPJController {
  //
  final CNPJModel _model;
  CNPJController(this._model);

  Map<String, dynamic> generate() {
    int weight1 = 5; // 5,4,3,2
    int weight2 = 9; // 9,8,7,6,5,4,3,2
    int weight3 = 6; // 6,5,4,3,2
    int weight4 = 9; // 9,8,7,6,5,4,3,2

    // Cnpj numbers
    _model.clear();
    _model.seed();
    _model.addDigits(4, 8, weight1, weight2, 4);
    _model.addDigits(5, 8, weight3, weight4, 5);

    return {
      'isValid': true,
      'isUserGiven': false,
      'number': _model.cnpj,
    };
  }
}

void main(List<String> args) {
  final controller = CNPJController(CNPJModel());
  print(controller.generate());
}
