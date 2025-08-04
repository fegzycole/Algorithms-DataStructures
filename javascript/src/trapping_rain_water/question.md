# 42. Trapping Rain Water

**Difficulty:** Hard  
**Topics:** Array, Two Pointers, Dynamic Programming, Stack  
**Link:** https://leetcode.com/problems/trapping-rain-water/

---

## Problem

Given `n` non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

### Constraints:

- `n == height.length`
- `1 <= n <= 2 * 10^4`
- `0 <= height[i] <= 10^5`

---

## Examples

### Example 1

**Input:**  
`height = [0,1,0,2,1,0,1,3,2,1,2,1]`

**Output:**  
`6`

**Explanation:**  
The elevation map traps 6 units of rain water as shown in the diagram.

### Example 2

**Input:**  
`height = [4,2,0,3,2,5]`

**Output:**  
`9`

---

## Approach

We use the **two-pointer technique** with constant space:

- Initialize two pointers: `left` at 0 and `right` at `n - 1`
- Track `leftMax` and `rightMax` — the highest walls seen so far from both ends
- At each step:
  - If `height[left]` is smaller:
    - If `height[left]` < `leftMax`, water is trapped: `leftMax - height[left]`
    - Else update `leftMax`
    - Move `left` pointer right
  - Else (right is smaller or equal):
    - If `height[right]` < `rightMax`, water is trapped: `rightMax - height[right]`
    - Else update `rightMax`
    - Move `right` pointer left

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

---
