# frozen_string_literal: true

def find_duplicate(nums)
  obj = {}
  i = 0

  while i < nums.length
    if obj[nums[i]]
      return nums[i]
    else
      obj[nums[i]] = nums[i]
    end

    i += 1
  end
end

p find_duplicate([3,1,3,4,2])
