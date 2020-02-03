# frozen_string_literal: true

def beautiful_triplets(d, arr)
  i = 0
  count = 0
  while i < arr.length
    second = arr[i] + d
    third = second + d
    if arr.any? { |num| num == second } && arr.any? { |num| num == third }
      count += 1
    end
    i += 1
  end
  count
end
