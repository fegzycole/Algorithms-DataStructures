export const lengthOfLastWord = (s: string): number => {
  let i = s.length - 1;
  let length = 0;

  // Skip trailing spaces
  while (i >= 0 && s[i] === ' ') {
    i--;
  }

  // Count the length of the last word
  while (i >= 0 && s[i] !== ' ') {
    length++;
    i--;
  }

  return length;
};
