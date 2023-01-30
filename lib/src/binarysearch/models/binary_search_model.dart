class BinarySearchModel {
  //
  binarySearch(List<int> iterable, int target) {
    int min = iterable.first;
    int max = iterable.last;
    int medium;
    int attempts = 0;

    while (true) {
      attempts++;
      medium = ((min + max) / 2).floor();

      if (iterable[medium] == target) {
        return {
          "Target": target,
          "Result": iterable[medium],
          "attempts": attempts,
        };
      } else {
        if (iterable[medium] > target) {
          max = medium - 1;
          print("Max: $max, Min: $min, Medium: $medium");
        } else {
          min = medium + 1;
          print("Max: $max, Min: $min, Medium: $medium");
        }
      }
    }
  }
}
