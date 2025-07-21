export const removeDuplicates = (nums: number[]): number => {
  // pointer to keep track of the most recent unique number;
  let i = 0;

  // pointer to loop through the array from the second element of the array
  for (let j = 1; j < nums.length; j++) {
    // if the current number is unique, update the pointer i
    if (nums[j] !== nums[i]) {
      i++;

      // Assign the current element to position i
      nums[i] = nums[j];
    }
  }

  // return the number of unique elements (i + 1) since i is 0 based
  return i + 1;
};
