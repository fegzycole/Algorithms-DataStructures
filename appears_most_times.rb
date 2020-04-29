# frozen_string_literal: true

def appears_most_times(array)
  hash_of_numbers = {}
  array.each do |el|
    if hash_of_numbers[el]
      hash_of_numbers[el] += 1
    else
      hash_of_numbers[el] = 1
    end
  end

  hash_of_numbers.max_by { |_k, v| v }[0]
end
