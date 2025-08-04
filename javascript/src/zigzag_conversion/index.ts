export const convert = (s: string, numRows: number): string => {
  if (numRows === 1 || s.length <= numRows) return s;

  const rows: string[] = Array.from(
    { length: Math.min(numRows, s.length) },
    () => '',
  );
  let currRow = 0;
  let goingDown = false;

  for (const char of s) {
    rows[currRow] += char;
    if (currRow === 0 || currRow === numRows - 1) goingDown = !goingDown;
    currRow += goingDown ? 1 : -1;
  }

  return rows.join('');
};
