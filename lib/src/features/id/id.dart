import 'dart:math';

import 'package:dev_utils/src/interfaces/i_id.dart';

final class ID implements IID {
  //
  final Random _rand = Random.secure();

  @override
  int generate({int length = 6}) {
    // Id length must be grater than 3
    if (length < 4) length = 4;

    String id = '';

    for (int i = 0; i < length; i++) {
      id += _rand.nextInt(10).toString();
    }

    return int.parse(id);
  }
}
