export const maxProfit = (prices: number[]): number => {
  // Set minimum price to the first price in the array
  let minPrice = prices[0];

  // Set maximum profit to zero as base
  let maxProfit = 0;

  // Iterate through the array of prices from the second element
  for (let i = 1; i < prices.length; i++) {
    // If we find a price lower than our current minPrice, update minPrice
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else {
      // Otherwise, calculate the profit if we sold at this price
      const profit = prices[i] - minPrice;

      // If this profit is greater than our current maxProfit, update it
      maxProfit = Math.max(profit, maxProfit);
    }
  }

  // Return the maximum profit
  return maxProfit;
};
