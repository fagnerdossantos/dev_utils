import 'package:dev_utils/dev_utils.dart';

void main() async {
  /* CPF */
  final cpfController = CPFController();
  Map<String, dynamic> cpf = cpfController.generate();
  print(cpf);
}
