base class BrazilianZipCodeHelper {
  // Regular expression
  final RegExp _regularExp = RegExp("^[0-9]+\$");

  // validations helpers
  bool validate({required String code}) {
    return _zipCodeIsNotEmpty(code) && _zipCodeLength(code) && _isNumeric(code);
  }

  bool _zipCodeLength(String zipCode) => zipCode.length == 8;

  bool _isNumeric(String zipCode) => _regularExp.hasMatch(zipCode);

  bool _zipCodeIsNotEmpty(String zipCode) => zipCode.isNotEmpty;
}
