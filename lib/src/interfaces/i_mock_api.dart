abstract interface class IMockAPI {
  Future<T> call<T>({required T data, int milliseconds = 1000});
}
