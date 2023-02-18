class BinarySearchModel {
  Map<String, dynamic> binarySearch(List<int> iterable, int target) {
    int min = 0;
    int max = iterable.length - 1;
    int medium;
    int attempts = 0;

    while (min <= max) {
      attempts++;

      medium = ((min + max) / 2).floor();

      if (iterable[medium] == target) {
        return {
          "target": target,
          "result": iterable[medium],
          "index": medium,
          "attempts": attempts,
        };
      } else {
        if (iterable[medium] > target) {
          max = medium - 1;
        } else {
          min = medium + 1;
        }
      }
    }

    return {
      "result": -1,
    };
  }
}
