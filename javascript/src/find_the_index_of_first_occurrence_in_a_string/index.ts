export const strStr = (haystack: string, needle: string): number => {
  const hLen = haystack.length;
  const nLen = needle.length;

  if (nLen === 0) return 0;
  if (nLen > hLen) return -1;

  for (let i = 0; i <= hLen - nLen; i++) {
    if (haystack.substring(i, i + nLen) === needle) {
      return i;
    }
  }

  return -1;
};
