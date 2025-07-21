export const removeDuplicates = (nums: number[]) => {
  // 'slow' is the index where the next valid element should go.
  // It also represents the current length of the array with allowed duplicates.
  let slow = 0;

  // 'fast' scans through every element in the array
  for (let fast = 0; fast < nums.length; fast++) {
    // If we have added fewer than 2 elements, always allow it.
    // OR if the current element is not the same as the element two positions before,
    // it means this element has not occurred more than twice yet, so it's safe to include.
    if (slow < 2 || nums[fast] !== nums[slow - 2]) {
      // Place the current valid element at the 'slow' index
      nums[slow] = nums[fast];

      // Move 'slow' pointer forward to the next position
      slow++;
    }

    // If the current element is the same as the one two places back (and slow >= 2),
    // we skip it because we've already added it twice.
  }

  // Return the length of the array with duplicates removed (up to 2 occurrences each)
  return slow;
};
