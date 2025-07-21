export const rotate = (nums: number[], k: number): void => {
  // Ensure k is within bounds (handles cases where k > nums.length)
  k = k % nums.length;

  // Step 1: Reverse the entire array
  // e.g. [1,2,3,4,5,6,7] -> [7,6,5,4,3,2,1]
  reverse(nums, 0, nums.length - 1);

  // Step 2: Reverse the first k elements
  // e.g. [7,6,5,4,3,2,1] -> [5,6,7,4,3,2,1] (first 3 elements reversed)
  reverse(nums, 0, k);

  // Step 3: Reverse the remaining n-k elements
  // e.g. [5,6,7,4,3,2,1] -> [5,6,7,1,2,3,4]
  reverse(nums, k, nums.length - 1);

  // Helper function to reverse elements in the array between start and end (inclusive)
  function reverse(arr: number[], start: number, end: number) {
    while (start < end) {
      // Swap elements at start and end
      [arr[start], arr[end]] = [arr[end], arr[start]];
      start++;
      end++;
    }
  }
};
