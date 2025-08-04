# 380. Insert Delete GetRandom O(1)

**Difficulty**: Medium  
**Tags**: Hash Table, Design, Array, Math, Randomized  
**Companies**: Frequently asked in interviews

---

## Problem Description

Implement the `RandomizedSet` class:

- `RandomizedSet()` Initializes the `RandomizedSet` object.
- `insert(val: number): boolean` Inserts an item `val` into the set if not present. Returns `true` if the item was not present, `false` otherwise.
- `remove(val: number): boolean` Removes an item `val` from the set if present. Returns `true` if the item was present, `false` otherwise.
- `getRandom(): number` Returns a random element from the current set of elements. Each element must have the same probability of being returned.

You must implement the functions of the class such that each function works in average **O(1)** time complexity.

---

## Example

**Input**

```
["RandomizedSet", "insert", "remove", "insert", "getRandom", "remove", "insert", "getRandom"]
[[], [1], [2], [2], [], [1], [2], []]
```

**Output**

```
[null, true, false, true, 2, true, false, 2]
```

**Explanation**

```ts
RandomizedSet randomizedSet = new RandomizedSet();
randomizedSet.insert(1); // Returns true
randomizedSet.remove(2); // Returns false
randomizedSet.insert(2); // Returns true
randomizedSet.getRandom(); // Returns 1 or 2
randomizedSet.remove(1); // Returns true
randomizedSet.insert(2); // Returns false
randomizedSet.getRandom(); // Returns 2
```

---

## Constraints

- `-2³¹ <= val <= 2³¹ - 1`
- At most `2 * 10⁵` calls will be made to `insert`, `remove`, and `getRandom`.
- There will be at least one element in the data structure when `getRandom` is called.

---