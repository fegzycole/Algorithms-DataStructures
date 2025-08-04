# 274. H-Index

**Difficulty**: Medium  
**Tags**: Array, Sorting  
**Companies**: Frequently asked in coding interviews

---

## Problem Description

Given an array of integers `citations` where `citations[i]` is the number of citations a researcher received for their `i`th paper, return the researcher's **h-index**.

According to the definition of h-index on Wikipedia:  
> The h-index is defined as the maximum value of `h` such that the given researcher has published at least `h` papers that have each been cited at least `h` times.

---

## Examples

### Example 1

**Input**:  
`citations = [3, 0, 6, 1, 5]`  
**Output**:  
`3`

**Explanation**:  
The researcher has 5 papers with the following citations: `[3, 0, 6, 1, 5]`.  
Since they have 3 papers with at least 3 citations each, the h-index is 3.

### Example 2

**Input**:  
`citations = [1, 3, 1]`  
**Output**:  
`1`

---

## Constraints

- `n == citations.length`  
- `1 <= n <= 5000`  
- `0 <= citations[i] <= 1000`

---