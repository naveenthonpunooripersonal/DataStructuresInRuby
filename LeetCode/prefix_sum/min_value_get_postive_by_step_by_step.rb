# time complexity O(n^2)
def min_start_value(nums)
  start_value = 1
  while true do
    flag = true
    index = 0
    sum = start_value
    while index < nums.length do
     sum =  sum + nums[index]
     if sum < 1
      flag = false
      break
     end
     index =  index + 1
    end
    return start_value if flag
    start_value = start_value + 1
  end
end

#time complexity O(n)

def min_start_value(nums)
  prefix_sum = 0
  min = 0
  i = 0

  while i < nums.length do
      prefix_sum = prefix_sum + nums[i]
      min = prefix_sum if min > prefix_sum
      i = i + 1
  end
  1 - min
end