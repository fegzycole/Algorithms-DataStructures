# 121. Best Time to Buy and Sell Stock

**Difficulty**: Easy  
**Topics**: Array, Greedy, Dynamic Programming

---

## 📝 Problem Statement

You are given an array `prices` where `prices[i]` is the price of a given stock on the `i`-th day.

You want to maximize your profit by choosing a single day to **buy** one stock and choosing a **different day in the future** to **sell** that stock.

Return the maximum profit you can achieve from this transaction.  
If you cannot achieve any profit, return `0`.

---

## 🧪 Examples

### Example 1

**Input:**
```
prices = [7,1,5,3,6,4]
```

**Output:**
```
5
```

**Explanation:**  
Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6 - 1 = 5.  
Note: You must buy before you sell.

---

### Example 2

**Input:**
```
prices = [7,6,4,3,1]
```

**Output:**
```
0
```

**Explanation:**  
No profitable transaction is possible since prices only decrease.

---

## 🔒 Constraints

- `1 <= prices.length <= 10^5`
- `0 <= prices[i] <= 10^4`

---

## 💡 Optimal Approach (Greedy)

Track the lowest price seen so far, and for each day, calculate the potential profit if selling on that day.  
Update the maximum profit if it's greater than the current max.

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

---

Let me know if you'd like the solution with code examples!
