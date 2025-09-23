# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  index = 1
  while index < nums.length  do
      nums[index] = nums[index] + nums[index - 1]
      index = index + 1
  end
  nums
end