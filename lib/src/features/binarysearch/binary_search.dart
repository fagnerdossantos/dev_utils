import 'dart:mirrors';

import 'package:dev_utils/src/interfaces/i_binary_search.dart';

class BinarySearch implements IBinarySearch {
  /// Search [Integers] and [Strings] targets
  @override
  Map<String, dynamic> search<T>(List<T> iterable, T target) {
    if (reflectType(T) == reflectType(int)) {
      return _searchInt(iterable.cast<int>(), target as int);
    } else if (reflectType(T) == reflectType(String)) {
      return _searchString(iterable.cast<String>(), target as String);
    } else {
      return {"some": 'Type $T not supported'};
    }
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
