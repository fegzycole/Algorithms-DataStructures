export const isPalindrome = (s: string) => {
  const isAlphaNumeric = (ch: string) => /[a-z0-9]/i.test(ch);

  let i = 0;

  let j = s.length - 1;

  while (i < j) {
    while (i < j && !isAlphaNumeric(s[i])) i++;

    while (i < j && !isAlphaNumeric(s[j])) j--;

    if (s[i].toLowerCase() !== s[j].toLowerCase()) return false;

    i++;
    j--;
  }

  return true;
};
