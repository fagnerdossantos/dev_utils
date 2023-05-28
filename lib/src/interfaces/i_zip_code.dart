typedef APIResponse = Map<String, dynamic>;

abstract interface class IZipCode {
  Future<APIResponse> searchByCode({required String code});
  Future<List<APIResponse>> searchMultipleByCode({required List<String> codes});
}
