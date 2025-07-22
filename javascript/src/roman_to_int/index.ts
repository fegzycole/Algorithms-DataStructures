export const romanToInt = (s: string) => {
  const romanMap: Record<string, number> = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  };

  let total = 0;

  for (let i = 0; i < s.length; i++) {
    const current = romanMap[s[i]];
    const next = romanMap[s[i + 1]];

    // If current value is less than next, subtract (e.g., IV => 1 < 5)
    if (current < next) {
      total -= current;
    } else {
      total += current;
    }
  }

  return total;
};
