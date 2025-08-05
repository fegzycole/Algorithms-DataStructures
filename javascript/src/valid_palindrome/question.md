# 125. Valid Palindrome

**Difficulty**: Easy  
**Topics**: Two Pointers, String, Regex  

## 📝 Problem Statement

A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward.  
Alphanumeric characters include **letters and numbers**.

Given a string `s`, return `true` if it is a palindrome, or `false` otherwise.

## 🧪 Examples

### Example 1:
**Input:**
```
s = "A man, a plan, a canal: Panama"
```
**Output:**
```
true
```
**Explanation:**  
After cleaning and lowercasing: `"amanaplanacanalpanama"` is a palindrome.

### Example 2:
**Input:**
```
s = "race a car"
```
**Output:**
```
false
```
**Explanation:**  
After cleaning: `"raceacar"` is not a palindrome.

### Example 3:
**Input:**
```
s = " "
```
**Output:**
```
true
```
**Explanation:**  
Empty string after removing non-alphanumeric characters is considered a palindrome.

## ✅ Constraints

- `1 <= s.length <= 2 * 10^5`
- `s` consists only of printable ASCII characters.

## 🔍 Follow-Up

Can you solve it in `O(n)` time and `O(1)` space?

## ✅ Optimal Solution (Two-Pointer Approach)

```ts
function isPalindrome(s: string): boolean {
    const isAlphaNumeric = (ch: string) => /[a-z0-9]/i.test(ch);

    let i = 0;
    let j = s.length - 1;

    while (i < j) {
        while (i < j && !isAlphaNumeric(s[i])) i++;
        while (i < j && !isAlphaNumeric(s[j])) j--;

        if (s[i].toLowerCase() !== s[j].toLowerCase()) {
            return false;
        }

        i++;
        j--;
    }

    return true;
}
```

## 📈 Complexity Analysis
