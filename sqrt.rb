# frozen_string_literal: true

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  midpoint = (min_interval + max_interval) / 2

  if midpoint * midpoint == number
    midpoint
  elsif midpoint * midpoint > number
    sqrt_recursive(number, min_interval, midpoint - 1)
  else
    sqrt_recursive(number, midpoint + 1, max_interval)
  end
end

p sqrt(7056)
