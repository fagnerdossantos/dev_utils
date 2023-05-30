
import 'package:dev_utils/src/features/id/id.dart';
import 'package:dev_utils/src/interfaces/i_id.dart';
import 'package:test/test.dart';

void main() {
  //
  final IID id = ID();

  group("ID Tests", () {
    test("Generate an ID with default length", () {
      // Default len
      final int defaultID = id.generate();

      expect(defaultID.toString().length, equals(6));
    });

    test("Generate an ID with a specific length", () {
      // Specified length
      final int specifiedLenId = id.generate(length: 8);

      expect(specifiedLenId.toString().length, equals(8));
    });
    test("Assert id is numeric", () {
      //
      final RegExp regex = RegExp(r'^[0-9]+$');
      final int genId = id.generate();
      final bool isNumeric = regex.hasMatch(genId.toString());

      expect(isNumeric, isTrue);
    });
  });
}
