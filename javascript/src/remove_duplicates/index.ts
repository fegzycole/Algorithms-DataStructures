export const removeDuplicates = (nums: number[]) => {
  // 'slow' is the index where the next valid element should go.
  // It also represents the current length of the array with allowed duplicates.
  let slow = 0;

  // 'fast' scans through every element in the array
  for (let fast = 0; fast < nums.length; fast++) {
    // If we have added fewer than 1 elements, always allow it.
    // OR if the current element is not the same as the element one position before,
    // it means this element has not occurred more than once yet, so it's safe to include.
    if (slow < 1 || nums[fast] !== nums[slow - 1]) {
      // Place the current valid element at the 'slow' index
      nums[slow] = nums[fast];

      // Move 'slow' pointer forward to the next position
      slow++;
    }

    // If the current element is the same as the one one places back (and slow >= 1),
    // we skip it because we've already added it.
  }

  // Return the length of the array with duplicates removed (up to 1 occurrences each)
  return slow;
};
