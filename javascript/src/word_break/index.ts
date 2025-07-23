export const wordBreak = (s: string, wordDict: string[]): boolean => {
  // Convert the word dictionary to a Set for O(1) lookup times
  const wordSet = new Set(wordDict);

  // dp[i] represents whether the substring s[0...i-1] can be segmented into valid words
  const dp = new Array(s.length + 1).fill(false);

  // An empty string is always segmentable
  dp[0] = true;

  // Check each substring ending at position i
  for (let i = 1; i <= s.length; i++) {
    // For each possible partition point j before i
    for (let j = 0; j < i; j++) {
      // If s[0...j-1] is segmentable (dp[j] is true)
      // and s[j...i-1] is a word in the dictionary
      if (dp[j] && wordSet.has(s.slice(j, i))) {
        dp[i] = true; // Then s[0...i-1] is segmentable
        break; // No need to check further j's for this i
      }
    }
  }

  // Return whether the entire string s is segmentable
  return dp[s.length];
};
