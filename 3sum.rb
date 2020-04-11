# frozen_string_literal: true

def three_sum(nums)
  nums.sort!

  i = 0
  result = []

  while i < (nums.length - 2)
    a = nums[i]

    return result.uniq if a.positive?

    if a == nums[i - 1] && i != 0
      i += 1
      next
    end

    left_index = i + 1
    right_index = nums.length - 1

    while left_index < right_index
      b = nums[left_index]
      c = nums[right_index]

      result.push([a, b, c]) if (a + b + c).zero?

      right_index -= 1 if (a + b + c) >= 0

      left_index += 1 if (a + b + c) <= 0
    end

    i += 1
  end

  result.length.positive? ? result.uniq! : result
end
