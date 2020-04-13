# frozen_string_literal: true

def fibonacci_recursive(num)
  num < 2 ? num : fibonacci_recursive(num - 1) + fibonacci_recursive(num - 2)
end

p fibonacci_recursive(6)
