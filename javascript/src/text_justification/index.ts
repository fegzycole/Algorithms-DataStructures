export const fullJustify = (words: string[], maxWidth: number): string[] => {
  const res: string[] = [];
  let line: string[] = [];
  let lineLen = 0;

  for (const word of words) {
    // Check if adding this word would exceed maxWidth
    if (lineLen + line.length + word.length > maxWidth) {
      const totalSpaces = maxWidth - lineLen;
      const gaps = line.length - 1;

      if (gaps === 0) {
        // Only one word in the line
        res.push(line[0] + ' '.repeat(totalSpaces));
      } else {
        const evenSpace = Math.floor(totalSpaces / gaps);
        let extra = totalSpaces % gaps;
        let lineStr = '';

        for (let i = 0; i < line.length - 1; i++) {
          lineStr += line[i] + ' '.repeat(evenSpace + (extra-- > 0 ? 1 : 0));
        }
        lineStr += line[line.length - 1];
        res.push(lineStr);
      }
      line = [];
      lineLen = 0;
    }

    line.push(word);
    lineLen += word.length;
  }

  // Last line (left-justified)
  const lastLine = line.join(' ');
  res.push(lastLine + ' '.repeat(maxWidth - lastLine.length));

  return res;
};
