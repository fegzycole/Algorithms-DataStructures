const fibonacci = (num, memo) => {
  let result;

  if (memo[num]) {
    return memo[num];
  }

  if ([1, 2].includes(num)) {
    result = 1;
  } else {
    result = fibonacci(num - 1, memo) + fibonacci(num - 2, memo);
  }

  memo[num] = result;

  return result;
}

const fibMemo = (num) => {
  return fibonacci(num, [])
}

console.log(fibMemo(1000));


const fib = (n) => {
  if ([1, 2].includes(n)) {
    return 1;
  }

  const arr = [];
  arr[1] = 1;
  arr[2] = 1;

  for (let i = 3; i <= n; i += 1) {
    arr[i] = arr[i - 1] + arr[i - 2];
  }

  return arr[n];
}

console.log(fib(1000));