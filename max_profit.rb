# frozen_string_literal: true

# def max_profit(prices)
#   max_profit = 0

#   i = 0

#   while i < prices.length
#     j = i + 1

#     while j < prices.length
#       max_profit = prices[j] - prices[i] if i < j && prices[i] < prices[j] && prices[j] - prices[i] > max_profit
#       j += 1
#     end
#     i += 1
#   end

#   max_profit
# end

def max_profit(prices)
  max_profit = 0
  min = prices[0]

  i = 0

  while i < prices.length
    if prices[i] < min
      min = prices[i]
    else
      max_profit = prices[i] - min if prices[i] - min > max_profit
    end
    i += 1
  end

  max_profit
end
