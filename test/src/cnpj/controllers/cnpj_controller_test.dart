import 'package:dev_utils/src/cnpj/controllers/cnpj_controller.dart';
import 'package:dev_utils/src/cnpj/models/cnpj_model.dart';
import 'package:test/test.dart';

void main() {
  test('Testing generate func', () {
    //
    CNPJController controller = CNPJController(CNPJModel());

    // Generating cnpj
    Map<String, dynamic> result = controller.generate();

    expect(result['isValid'], true);
    expect(result['isUserGiven'], false);
    expect(result['number'], greaterThanOrEqualTo(1000000000000));
    expect(result['number'], lessThanOrEqualTo(99999999999999));
  });
}
