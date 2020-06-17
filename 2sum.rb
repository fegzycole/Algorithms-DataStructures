def two_sum(nums, target)   
  i = 0
  
  while i < nums.length
      sub = target - nums[i]
      index = nums.find_index(sub)
      return [i, index] unless index.nil? || index == i
      
      i += 1
  end
end