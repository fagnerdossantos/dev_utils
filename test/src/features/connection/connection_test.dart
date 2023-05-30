import 'package:dev_utils/dev_utils.dart';
import 'package:test/test.dart';
import 'package:dev_utils/src/interfaces/i_connection.dart';

void main() {
  // Instance
  final IConnection connection = Connection();

  group('Connection', () {
    test(
        'status() should return (true, "Connected") if connected to the internet',
        () async {
      final (bool, String) result = await connection.status();

      expect(result, isA<(bool, String)>());
      expect(result.$1, isTrue);
      expect(result.$2, equals("Connected"));
    });
  });
}
