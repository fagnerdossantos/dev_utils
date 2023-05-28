abstract interface class IConnection {
  Future<(bool, String)> status();
}
