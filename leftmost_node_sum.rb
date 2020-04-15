# frozen_string_literal: true

def leftmost_nodes_sum(array)
  i = 0
  result = [array[0]]
  while i < array.length
    i = (2 * i) + 1
    result << array[i] if array[i].nil?
  end

  result.inject(:+)
end
