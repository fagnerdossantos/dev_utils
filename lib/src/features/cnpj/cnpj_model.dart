final class CNPJModel {
  final String number;
  final bool isValid;
  final bool isGenerated;

  const CNPJModel({
    required this.number,
    required this.isValid,
    required this.isGenerated,
  });
}
