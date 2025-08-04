# 58. Length of Last Word

**Difficulty:** Easy  
**Topics:** String  
**Link:** https://leetcode.com/problems/length-of-last-word/

---

## Problem

Given a string `s` consisting of words and spaces, return the length of the last word in the string.

A word is defined as a maximal substring consisting of non-space characters only.

---

## Examples

### Example 1

**Input:**  
`s = "Hello World"`  
**Output:**  
`5`  
**Explanation:**  
The last word is `"World"` with length 5.

---

### Example 2

**Input:**  
`s = "   fly me   to   the moon  "`  
**Output:**  
`4`  
**Explanation:**  
The last word is `"moon"` with length 4.

---

### Example 3

**Input:**  
`s = "luffy is still joyboy"`  
**Output:**  
`6`  
**Explanation:**  
The last word is `"joyboy"` with length 6.

---

## Constraints

- `1 <= s.length <= 10^4`
- `s` consists of only English letters and spaces `' '`.
- There will be at least one word in `s`.

---

## Approach

### Method: Reverse Scan (No Split)

1. Trim any trailing spaces (or skip them during iteration).
2. Start from the end of the string and move backwards:
   - Count characters until a space is encountered.
3. Return the count.

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

---
