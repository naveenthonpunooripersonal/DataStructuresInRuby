def two_sum(nums, target)
  for i in 0..(nums.length-2)
    for j in (i+1)..(nums.length-1)
      if nums[i] + nums[j] == target
        return nums[i], nums[j]
      end
    end
  end
end

def two_sum(nums, target)
  visited_numbers = {}

  i = 0 
  while i < nums.length-1
    complement =  target - nums[i]
    if visited_numbers[complement]
      return [i, visited_numbers[complement]]
    end
    visited_numbers[nums[i]] = i
    i =  i + 1
  end
end
