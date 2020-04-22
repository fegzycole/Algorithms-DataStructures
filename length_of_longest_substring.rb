# frozen_string_literal: true

def length_of_longest_substring(s)
  s_array = s.split('')
  letters = []
  max = 0

  i = 0
  j = 0

  return 1 if [1].include? s.length

  while i < s_array.length - 1
    if letters.include? s_array[j]
      letters = letters.reject(&:nil?)
      max = letters.length if letters.length > max && !letters.include?(nil)
      letters = []
      j = i + 1
      i += 1
    else
      letters.push(s_array[j])
      j += 1
    end
  end

  max
end

p length_of_longest_substring('abcabcbb')
