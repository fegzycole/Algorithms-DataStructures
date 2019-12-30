# frozen_string_literal: true

def anagram(s)
  hash = {}
  return -1 if s.length.odd?

  slice_half = s.length / 2
  first_half = s[0...slice_half]
  second_half = s[slice_half...s.length]
  first_half.split('').each do |num|
    if hash[num.to_s]
      hash[num.to_s] += 1
    else
      hash[num.to_s] = 1
    end
  end

  second_half.split('').each do |num|
    hash[num.to_s] -= 1 if hash[num.to_s]&.positive?
  end
  sum = hash.values.inject { |acc, el| acc + el }
  sum
end
