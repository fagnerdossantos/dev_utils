class AgeModel {
  final DateTime _now = DateTime.now();

  // Method that takes a birthdate as a DateTime object and returns the age
  int calculateAge(List<int> birth) {
    final age = _now.year - birth[2];
    final month = _now.month - birth[1];
    final day = _now.day - birth[0];

    // If the birth month is later in the year than the current month,
    // or if the birth month is the same as the current month but the birth day is later,
    // subtract one from the age
    if (month < 0 || (month == 0 && day < 0)) {
      return age - 1;
    }

    return age;
  }
}
