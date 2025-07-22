export const canJump = (nums: number[]): boolean => {
  // Track the farthest index we can reach
  let maxReach = 0;

  // Iterate through the array
  for (let i = 0; i < nums.length; i++) {
    // If our current index is beyond the farthest reachable index, we can't proceed
    if (i > maxReach) {
      return false;
    }

    // Update the farthest reachable index
    maxReach = Math.max(maxReach, i + nums[i]);

    // If we can already reach or go beyond the last index, we’re done
    if (maxReach >= nums.length - 1) {
      return true;
    }
  }

  // If loop ends without reaching last index, return false
  return false;
};
