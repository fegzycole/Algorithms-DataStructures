export const merge = (
  nums1: number[],
  m: number,
  nums2: number[],
  n: number,
): void => {
  if (n === 0) return;
  if (m === 0) {
    for (let i = 0; i < n; i++) nums1[i] = nums2[i];
    return;
  }

  let first = m - 1;
  let second = n - 1;

  for (let i = m + n - 1; i >= 0; i--) {
    if (second < 0) break;

    if (first >= 0 && nums1[first] > nums2[second]) {
      nums1[i] = nums1[first];

      first--;
    } else {
      nums1[i] = nums2[second];

      second--;
    }
  }
};
