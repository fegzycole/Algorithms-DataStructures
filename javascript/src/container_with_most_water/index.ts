export const maxArea = (height: number[]): number => {
  let left = 0;
  let right = height.length - 1;
  let maximumArea = 0;

  while (left < right) {
    const heightOfContainer = Math.min(height[left], height[right]);
    const width = right - left;

    maximumArea = Math.max(maximumArea, heightOfContainer * width);

    // Move the shorter line inward because it's the limiting factor.
    // Only a taller line might help us find a larger area as the width shrinks.
    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return maximumArea;
};
