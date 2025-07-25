export const longestCommonSubstring = (strs: string[]) => {
  let prefix = strs[0];

  let prefixLength = strs[0].length;

  for (let i = 0; i < strs.length; i++) {
    while (prefix !== strs[i].slice(0, prefixLength)) {
      prefixLength -= 1;

      if (prefixLength === 0) {
        return '';
      }

      prefix = prefix.slice(0, prefixLength);
    }
  }

  return prefix;
};
