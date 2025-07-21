export const majorityElement = (nums: number[]): number => {
  let candidate = nums[0]; // start with the first element as a candidate
  let count = 1;

  for (let i = 1; i < nums.length; i++) {
    if (nums[i] === candidate) {
      count++; // increment if the same as candidate
    } else {
      count--; // otherwise, decrement
      if (count === 0) {
        candidate = nums[i]; // switch candidate when count drops to 0
        count = 1;
      }
    }
  }

  return candidate;
};
