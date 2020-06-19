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