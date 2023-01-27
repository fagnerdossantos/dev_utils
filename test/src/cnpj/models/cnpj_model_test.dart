import 'dart:math';

import 'package:test/test.dart';

void main() {
  test('Test the length of seed func', () {
    List<int> cnpjMock = List.generate(12, (_) => Random.secure().nextInt(10));

    expect(cnpjMock.length, 12);
    for (int i = 0; i < 12; i++) {
      expect(cnpjMock[i], greaterThanOrEqualTo(0));
      expect(cnpjMock[i], lessThanOrEqualTo(9));
    }
  });
}
