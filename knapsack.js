const coinChange = (coins, amount) => {
  const result = [];

  const backtrack = (end, remain, cur_result) => {
    if (end < 0) return;

    if (remain  == 0) {
      result.push(cur_result);
      return;
    }

    if (remain >= coins[end]) {
       backtrack(end, remain - coins[end], cur_result + [coins[end]])
    }

    backtrack(end - 1, remain, cur_result);
  }

  backtrack(coins.length - 1, amount, []);

  return result.sort((a, b) => a.length - b.length)[0].split('');
}

console.log(coinChange([1, 2, 4], 12));

const newCoinChange = (coins, amount) => {
  const T = new Array(amount + 1).fill([]);

  console.log(T)

  for (let i = 0; i < coins.length; i += 1) {
    for (let j = 0; j < amount; j += 1) {
      if (i === 0 && j == 0) {
        T[i][j] = 0;
      } else if (i > j) {
        T[i][j] = T[i - 1][j]
      } else {
        T[i][j] = T[i - 1][j] + T[i][j - i]
      }
    }
  }

  return T[T.length - 1];
}

console.log(newCoinChange([1, 2, 6], 6))