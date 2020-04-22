# frozen_string_literal: true

def remove_duplicates(nums)
  i = 0

  while i < nums.length - 1
    if nums[i + 1] == nums[i]
      nums.delete_at(i)
    else
      i += 1
    end
  end

  nums.length
end

p remove_duplicates([1, 1, 2])
