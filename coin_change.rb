# You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

# Example 1:

# Input: coins = [1, 2, 5], amount = 11
# Output: 3 
# Explanation: 11 = 5 + 5 + 1

def coin_change(coins, amount)
  dp = []
  dp[0] = 0
  
  i =  1
  
  while i <= amount
      dp[i] = amount + 1
      
      i += 1
  end
  
  j = 0
  
  while j <= amount
    k = 0
    
    while k < coins.length
      if  j >= coins[k]
        dp[j] = 1 + dp[j - coins[k]] > dp[j] ? dp[j] : 1 + dp[j - coins[k]]
      end
      k += 1
    end
    
    j += 1
  end

  dp[amount] == amount + 1 ? -1 : dp[amount]
end