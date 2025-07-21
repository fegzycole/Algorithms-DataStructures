export const maxProfit = (prices: number[]): number => {
  let profit = 0;

  // Loop through the prices from day 1 to the end
  for (let i = 1; i < prices.length; i++) {
    // If today's price is higher than yesterday's, we "buy" yesterday and "sell" today
    if (prices[i] > prices[i - 1]) {
      profit += prices[i] - prices[i - 1];
    }
  }

  return profit;
};
