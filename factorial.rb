# frozen_string_literal: true

def factorial(num)
  num.zero? ? 1 : num * factorial(num - 1)
end

p factorial(5)
