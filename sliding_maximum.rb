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
