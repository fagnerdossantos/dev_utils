class AgeModel {
  final DateTime _now = DateTime.now();

  // Method that takes a birthdate as a DateTime object and returns the age
  int calculateAge({required int day, required int month, required int year}) {
    final yearNow = _now.year - year;
    final monthNow = _now.month - month;
    final dayNow = _now.day - day;

    // If the birth month is later in the year than the current month,
    // or if the birth month is the same as the current month but the birth day is later,
    // subtract one from the year
    if (monthNow < 0 || (monthNow == 0 && dayNow < 0)) {
      return yearNow - 1;
    }

    return yearNow;
  }
}
