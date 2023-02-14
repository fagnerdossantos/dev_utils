class BinarySearchModel {
  //
  binarySearch(List<int> iterable, int target) {
    int min = 0;
    int max = iterable.last;
    int medium;
    int attempts = 0;

    while (min <= max) {
      attempts++;

      medium = ((min + max) / 2).floor();
      print("Max $max");
      print("Min $min");
      print("MEdia $medium");

      if (iterable[medium] == target) {
        return {
          "Target": target,
          "Result": iterable[medium],
          "Index": medium,
          "attempts": attempts,
        };
      } else {
        if (iterable[medium] > target) {
          max = medium - 1;
          print("Maxima if $max");
        } else {
          min = medium + 1;
          print("Minima if $min");
        }
      }
    }

    return {
      "Target": target,
      "Result": -1,
      "Index": -1,
      "attempts": 0,
    };
  }
}
