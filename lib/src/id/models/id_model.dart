import 'dart:math';

class IdModel {
  final _rng = Random.secure();

  String generateID({required int length}) {
    String id = '';

    for (int i = 0; i < length; i++) {
      id += _rng.nextInt(10).toString();
    }

    return id;
  }
}
