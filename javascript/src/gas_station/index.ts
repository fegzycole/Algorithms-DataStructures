export const canCompleteCircuit = (gas: number[], cost: number[]): number => {
  // Total gas and total cost help determine if the trip is possible at all
  let totalGas = 0;
  let totalCost = 0;

  // Index where we might be able to start the trip
  let startIndex = 0;

  // Current tank balance as we simulate the journey
  let tank = 0;

  for (let i = 0; i < gas.length; i++) {
    // Accumulate total gas and cost for the feasibility check
    totalGas += gas[i];
    totalCost += cost[i];

    // Add net gas at this station to the tank
    tank += gas[i] - cost[i];

    // If tank drops below 0, we can't reach the next station from startIndex
    if (tank < 0) {
      // So we try starting from the next station
      startIndex = i + 1;

      // Reset tank for the new attempt
      tank = 0;
    }
  }

  // If total gas is less than total cost, it's impossible to complete the trip
  return totalGas < totalCost ? -1 : startIndex;
};
