# frozen_string_literal: true

def chocolateFeast(n, c, m)
  wrapper = n / c
  total = wrapper

  while wrapper >= m
    division = wrapper / m
    total += division
    left_over = wrapper % m

    wrapper = division + left_over
  end

  total
end

p chocolateFeast(15, 3, 2)
