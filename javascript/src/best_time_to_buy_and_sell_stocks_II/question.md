# 122. Best Time to Buy and Sell Stock II

**Difficulty:** Medium  
**Tags:** Greedy, Array

---

## 🧾 Problem Statement

You are given an integer array `prices` where `prices[i]` is the price of a given stock on the `i-th` day.

On each day, you may decide to buy and/or sell the stock. You can **only hold at most one share of the stock at any time**. However, you **can buy and then immediately sell** the stock on the same day.

Return the **maximum profit** you can achieve.

---

## ✅ Example

### Example 1:

**Input:** `prices = [7,1,5,3,6,4]`  
**Output:** `7`  
**Explanation:**  
- Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 4.  
- Buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 3.  
- Total profit = 4 + 3 = **7**.

---

### Example 2:

**Input:** `prices = [1,2,3,4,5]`  
**Output:** `4`  
**Explanation:**  
- Buy on day 1 and sell on day 5 for a profit of 4.  
- Total profit = **4**.

---

### Example 3:

**Input:** `prices = [7,6,4,3,1]`  
**Output:** `0`  
**Explanation:**  
- Prices are continuously falling, no transaction is done.  
- Total profit = **0**.

---

## ✅ Constraints

- `1 <= prices.length <= 3 * 10^4`
- `0 <= prices[i] <= 10^4`

---