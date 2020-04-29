# frozen_string_literal: true

def search_range(nums, target)
  first = -1
  sec = -1

  left = 0
  right = nums.length - 1

  while left <= right
    mid = left + ((right - left) / 2)

    if nums[mid] == target
      if first != -1
        sec = mid
      else
        first = mid
      end

      left = mid + 1
      right = mid - 1
    elsif target < nums[mid]
      right = mid - 1
    else
      left = mid + 1
    end
  end
  [first, sec].sort.reverse.each do |idx|
    p idx
  end
end

p search_range([5, 7, 7, 8, 8, 10], 8)
