export const intToRoman = (num: number) => {
  if (num < 1 || num > 3999) {
    throw new Error('Upper or Lower bounds met');
  }

  const romanMap = [
    {
      value: 1000,
      symbol: 'M',
    },
    {
      value: 900,
      symbol: 'CM',
    },
    {
      value: 500,
      symbol: 'D',
    },
    {
      value: 400,
      symbol: 'CD',
    },
    {
      value: 100,
      symbol: 'C',
    },
    {
      value: 90,
      symbol: 'XC',
    },
    {
      value: 50,
      symbol: 'L',
    },
    {
      value: 40,
      symbol: 'XL',
    },
    {
      value: 10,
      symbol: 'X',
    },
    {
      value: 9,
      symbol: 'IX',
    },
    {
      value: 5,
      symbol: 'V',
    },
    {
      value: 4,
      symbol: 'IV',
    },
    {
      value: 1,
      symbol: 'I',
    },
  ];

  let result = '';

  for (const { value, symbol } of romanMap) {
    while (num >= value) {
      result += symbol;

      num -= value;
    }

    if (num === 0) break;
  }

  return result;
};
