# frozen_string_literal: true

def hamming_distance(x, y)
  x_base = ''
  y_base = ''

  while x.positive?
    remainder = x % 2
    x_base += remainder.to_s
    x /= 2
  end
  x_base.reverse!

  while y.positive?
    remainder = y % 2
    y_base += remainder.to_s
    y /= 2
  end
  y_base.reverse!

  if x_base.length > y_base.length
    y_base = y_base.split('').unshift('0').join('') while x_base.length > y_base.length
  end

  if x_base.length < y_base.length
    x_base = x_base.split('').unshift('0').join('') while x_base.length < y_base.length
  end

  j = 0
  count = 0

  while j < x_base.length
    count += 1 if x_base[j] != y_base[j]
    j += 1
  end
  count
end

p hamming_distance(93, 73)
