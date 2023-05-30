import 'package:dev_utils/src/features/binarysearch/binary_search.dart';
import 'package:dev_utils/src/interfaces/i_binary_search.dart';
import 'package:test/test.dart';

void main() {
  //
  final IBinarySearch search = BinarySearch();

  group('BinarySearch', () {
    test('Searches for an integer in a sorted list of integers', () {
      // Default Values
      const List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      const int target = 5;

      final Map<String, dynamic> result = search.search(list, target);

      expect(result['result'], target);
      expect(result['index'], 4);
    });

    test('Searches for a string in a sorted list of strings', () {
      // Default Values
      const List<String> list = [
        'apple',
        'banana',
        'cherry',
        'grape',
        'orange'
      ];
      const String target = 'cherry';

      final result = search.search(list, target);

      expect(result['result'], target);
      expect(result['index'], 2);
    });
  });
}
