# frozen_string_literal: true

def sliding_maximum(k, array)
  i = 0
  arr = []
  while i <= array.length - k
    arr.push(array[i..i + (k - 1)].max)
    i += 1
  end
  arr
end

def new_sliding_maximum(k, array)
  arr = []
  max = array[0..0 + (k - 1)].max
  arr.push(max)
  i = k
  while i < array.length
    max = array[i] if array[i] > max
    arr.push(max)
    i += 1
  end
  arr
end

p new_sliding_maximum(3, [1, 3, 5, 7, 9, 2])
