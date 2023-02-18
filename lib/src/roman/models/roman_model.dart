class RomanModel {
  /// Convert decimal numbers to Roman
  Map<String, String> convertToRoman({required int decimal}) {
    String result = '';
    String number = decimal.toString();

    algs.forEach((key, value) {
      while (decimal >= value) {
        result += key;
        decimal -= value;
      }
    });

    return {"roman": result, "decimal": number};
  }

  final Map<String, int> algs = {
    'M': 1000,
    'CM': 900,
    'D': 500,
    'CD': 400,
    'C': 100,
    'XC': 90,
    'L': 50,
    'XL': 40,
    'X': 10,
    'IX': 9,
    'V': 5,
    'IV': 4,
    'I': 1,
  };
}
