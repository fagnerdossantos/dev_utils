import 'package:dev_utils/src/features/age/age_calculator.dart';
import 'package:dev_utils/src/interfaces/i_age.dart';
import 'package:test/test.dart';

void main() {
  // AGE TESTS
  // Tests made in 5/30/2023

  final IAge calculator = AgeCalculator();

  group('Age Calculator', () {
    test(
        'Calculates age for a person who had their birthday on the same day as the test',
        () {
      final int age = calculator.calculate(
        day: 30,
        month: 5,
        year: 2000,
      );

      expect(age, 23);
    });

    test(
        'Calculates age for a person who had their birthday one day before the test',
        () {
      final int age = calculator.calculate(
        day: 30,
        month: 5,
        year: 2000,
      );

      expect(age, 23);
    });

    test(
        'Calculates age for a person who will have their birthday one day after the test',
        () {
      final int age = calculator.calculate(
        day: 31,
        month: 5,
        year: 2000,
      );
      expect(age, 22);
    });

    test(
        'Calculates age for a person who had their birthday one month before the test',
        () {
      final int age = calculator.calculate(day: 30, month: 4, year: 2000);
      expect(age, 23);
    });

    test(
        'Calculates age for a person who will have their birthday one month after the test',
        () {
      final int age = calculator.calculate(
        day: 30,
        month: 6,
        year: 2000,
      );
      expect(age, 22);
    });
  });
}
