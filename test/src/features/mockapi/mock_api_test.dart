import 'package:dev_utils/src/features/mockapi/mock_api.dart';
import 'package:test/test.dart';

void main() {
  //
  final MockAPI mockAPI = MockAPI();

  group('MockAPI Tests', () {
    test('Check call returns correct value', () async {
      // Setting
      const int data = 10;
      final int result = await mockAPI.call(data: data);

      expect(result, equals(data));
    });

    test('Call returns after specified milliseconds', () async {
      // Setting
      const String data = "Void";
      const int milliseconds = 2000;

      final DateTime startTime = DateTime.now();

      await mockAPI.call(data: data, milliseconds: milliseconds);

      final DateTime endTime = DateTime.now();

      final Duration duration = endTime.difference(startTime);

      expect(duration.inMilliseconds, greaterThanOrEqualTo(milliseconds));
    });

    test('Call throws exception for unsupported type', () async {
      //
      const String data = 'test';
      const String failMessage = "Exception should have been thrown";

      try {
        await mockAPI(data: data);
        fail(failMessage); // Used to throw an exception
      } catch (e) {
        expect(e, isException);
        expect(e.toString(), contains(failMessage));
      }
    });
  });
}
