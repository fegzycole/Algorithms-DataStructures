export const findMedianSortedArrays = (
  nums1: number[],
  nums2: number[],
): number => {
  const m = nums1.length;
  const n = nums2.length;

  let first = m - 1;
  let second = n - 1;

  for (let i = m + n - 1; i >= 0; i--) {
    if (second < 0) {
      break;
    }

    if (first >= 0 && nums1[first] > nums2[second]) {
      nums1[i] = nums1[first];

      first--;
    } else {
      nums1[i] = nums2[second];

      second--;
    }
  }

  const divisionValue = nums1.length / 2;

  if (nums1.length % 2 === 0) {
    return (nums1[divisionValue] + nums1[divisionValue]) / 2;
  }

  return nums1[divisionValue];
};
