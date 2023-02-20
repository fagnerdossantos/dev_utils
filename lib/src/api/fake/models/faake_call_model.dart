class FakeCallModel {
  // Default object value
  Future<T> fetch<T>({required T obj, int milliseconds = 1000}) async {
    final response =
        await Future.delayed(Duration(milliseconds: milliseconds), () => obj);
    return response;
  }
}
