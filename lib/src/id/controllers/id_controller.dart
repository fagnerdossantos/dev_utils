import 'package:dev_utils/src/id/models/id_model.dart';

class IdController extends IdModel {
  /// generates an ID with default length of 8
  ///
  /// User can provide a length
  ///
  /// If length iquals or lower than 0 returns default
  @override
  String generateID({int length = 8}) {
    if (length <= 0) {
      length = 8;
    }
    return super.generateID(length: length);
  }
}
