import 'package:dev_utils/src/interfaces/i_mock_api.dart';

final class MockAPI implements IMockAPI {
  @override
  Future<T> call<T>({required T data, int milliseconds = 1000}) async {
    return await Future.delayed(
      Duration(milliseconds: milliseconds),
      () => data,
    );
  }
}
