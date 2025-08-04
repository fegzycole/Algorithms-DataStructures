export const reverseWords = (s: string): string => {
  return s.trim().split(/\s+/).reverse().join(' ');
};
