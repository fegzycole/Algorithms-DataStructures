# frozen_string_literal: true

def max_area(height)
  biggest = 0

  left = 0
  right = height.length - 1

  while left < right
    min_of_heights = [height[left], height[right]].min

    distance = right - left

    biggest = [biggest, min_of_heights * distance].max

    height[left] < height[right] ? left += 1 : right -= 1
  end

  biggest
end
