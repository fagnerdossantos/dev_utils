final class CNPJModel {
  final String number;
  final bool isValid;
  final bool isGenerated;

  const CNPJModel({
    required this.number,
    required this.isValid,
    required this.isGenerated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'isValid': isValid,
      'isGenerated': isGenerated,
    };
  }

  @override
  String toString() =>
      'CNPJModel(number: $number, isValid: $isValid, isGenerated: $isGenerated)';
}
