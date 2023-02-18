import 'package:dev_utils/src/binarysearch/models/binary_search_model.dart';

class BinarySearchController extends BinarySearchModel {
  /// Return a Map with keys:
  /// {target, result, index, attempts}
  ///
  /// If not found return with key {result}
  ///
  /// Ex: binarySearch([2, 7, 9], 7)
  ///
  /// result: {target: 7, result: 7, index: 1, attempts: 1}
  ///
  /// Ex: binarySearch([2, 7, 9], 6)
  ///
  /// result: {result: -1}
  @override
  binarySearch(List<int> iterable, int target) {
    // Target grater than the list
    if (target > iterable.last) {
      return {
        "result": -1,
      };
    }

    return super.binarySearch(iterable, target);
  }
}
