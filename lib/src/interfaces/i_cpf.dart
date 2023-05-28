import 'package:dev_utils/src/features/cpf/cpf_model.dart';

abstract interface class ICPFValidator {
  CPFModel validate({required String number});
}

abstract interface class ICPFGenerator {
  CPFModel generate();
}
