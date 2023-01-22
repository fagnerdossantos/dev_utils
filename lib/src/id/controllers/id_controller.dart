import 'dart:math';

class IdController {
  final _rng = Random.secure();

  String generateID() {
    String id = '';

    for (int i = 0; i < 8; i++) {
      id += _rng.nextInt(10).toString();
    }

    return id;
  }
}
