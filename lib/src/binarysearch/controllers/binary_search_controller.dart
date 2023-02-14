import 'package:dev_utils/src/binarysearch/models/binary_search_model.dart';

class BinarySearchController extends BinarySearchModel {
  @override
  binarySearch(List<int> iterable, int target) {
    // Target grater than the list
    if (target > iterable.last) {
      return {
        "Target": target,
        "Result": -1,
        "Index": -1,
        "attempts": 0,
      };
    }

    return super.binarySearch(iterable, target);
  }
}
