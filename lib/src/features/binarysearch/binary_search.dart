import 'dart:mirrors';

class BinarySearch {
  /// Search [Integers] and [Strings] targets
  Map<String, dynamic> search<T>(List<T> iterable, T target) {
    if (reflectType(T) == reflectType(int)) {
      return _searchInt(iterable.cast<int>(), target as int);
    } else if (reflectType(T) == reflectType(String)) {
      return _searchString(iterable.cast<String>(), target as String);
    } else {
      return {"some": 'Type $T not supported'};
    }
  }

  /// The compareTo function should be implemented for objects that will be used in binary search.
  /// It is necessary to compare the elements and determine the correct order.
  /// Make sure to implement the compareTo function in your custom class.
  /// Example implementation for the Person class:
  ///
  /// ``` dart
  ///  class Person implements Comparable<Person> {
  ///    final String name;
  ///    final int age;
  ///
  ///    Person({required this.name, required this.age});
  ///
  ///    @override
  ///    int compareTo(Person other) {
  ///      return name.compareTo(other.name);
  ///    }
  /// }
  ///
  ///  final List<Person> personList = [
  ///    Person(name: 'Alice', age: 25),
  ///    Person(name: 'Bob', age: 30),
  ///    Person(name: 'Charlie', age: 35),
  /// ];
  ///
  ///  final personTarget = Person(name: 'Bob', age: 30);
  ///  final result = binarySearch.searchObject<Person>(personList, personTarget);
  ///  print(result); // {target: Person, result: Person, index: 1, attempts: 1}
  /// }
  /// ```
  /// Make sure to adapt the compareTo function according to your needs.
  Map<String, dynamic> searchObject<T extends Comparable<T>>(
      List<T> iterable, T target) {
    Map<String, dynamic> toMap(T? result, int index, int attempts) {
      return {
        "target": target,
        "result": result,
        "index": index,
        "attempts": attempts,
      };
    }

    int min = 0;
    int max = iterable.length - 1;
    int attempts = 0;

    while (min <= max) {
      attempts++;

      int mid = (min + ((max - min) ~/ 2));
      T element = iterable[mid];

      int comparison = element.compareTo(target);

      if (comparison == 0) {
        return toMap(element, mid, attempts);
      } else if (comparison < 0) {
        min = mid + 1;
      } else {
        max = mid - 1;
      }
    }

    return toMap(null, -1, attempts);
  }

  // Search Integers
  Map<String, dynamic> _searchInt(List<int> iterable, int target) {
    //
    Map<String, dynamic> toMap(int? result, int index, int attempts) {
      return {
        "target": target,
        "result": result,
        "index": index,
        "attempts": attempts,
      };
    }

    int min = 0;
    int max = iterable.length - 1;
    int attempts = 0;

    while (min <= max) {
      attempts++;

      int mid = (min + ((max - min) ~/ 2));
      int element = iterable[mid];

      if (element == target) {
        return toMap(element, mid, attempts);
      } else if (element < target) {
        min = mid + 1;
      } else {
        max = mid - 1;
      }
    }

    return toMap(null, -1, attempts);
  }

  // Search Strings
  Map<String, dynamic> _searchString(List<String> iterable, String target) {
    //
    Map<String, dynamic> toMap(String? result, int index, int attempts) {
      return {
        "target": target,
        "result": result,
        "index": index,
        "attempts": attempts,
      };
    }

    int min = 0;
    int max = iterable.length - 1;
    int attempts = 0;

    while (min <= max) {
      attempts++;

      int mid = (min + ((max - min) ~/ 2));
      String element = iterable[mid];

      int comparison = element.toLowerCase().compareTo(target.toLowerCase());

      if (comparison == 0) {
        return toMap(element, mid, attempts);
      } else if (comparison < 0) {
        min = mid + 1;
      } else {
        max = mid - 1;
      }
    }

    return toMap(null, -1, attempts);
  }
}
