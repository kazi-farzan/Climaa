import 'dart:collection';

void main() {
  List<int> nums = [1, 2, 3, 4];
  print(isDuplicate(nums));
}

bool isDuplicate(List<int> nums) {
  //variables
  var hashSet = HashSet<int>();
  bool hasDuplicate = false;

  for (int i = 0; i < nums.length; i++) {
    // print('current element: ${nums[i]}');
    // print('flag before adding: $hasDuplicate');
    // print('Hashset before adding : $hashSet');
    var added = hashSet.add(nums[i]);
    // print('Hashset after adding : $hashSet');
    if (!added) {
      hasDuplicate = true;
    } else {
      hasDuplicate = false;
    }

    // print('flag after adding : $hasDuplicate');
  }
  return hasDuplicate;
}
