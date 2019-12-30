# frozen_string_literal: true

def get_fibonacci(n)
  arr = [1, 2]
  result = 0
  while result < n
    result = arr[-2] + arr[-1]
    break if result > n

    arr.push(result)
  end
  arr.filter(&:even?).inject(:+)
end
