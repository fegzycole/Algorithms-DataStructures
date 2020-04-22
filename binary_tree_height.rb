# frozen_string_literal: true

def binary_tree_height(array_tree)
  # write your code here
  result_left = 1
  result_right = 1

  i = 0
  while i < array_tree.length
    result_left += 1 if array_tree[2 * i + 1]
    i = 2 * i + 1
  end

  j = 0
  while j < array_tree.length
    result_right += 1 if array_tree[2 * j + 2]
    j = 2 * j + 2
  end

  [result_left, result_right].max
end
