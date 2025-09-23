# 189. Rotate Array
# Medium
# Topics
# Companies
# Hint
# Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.

 

# Example 1:

# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]
# Example 2:

# Input: nums = [-1,-100,3,99], k = 2
# Output: [3,99,-1,-100]
# Explanation: 
# rotate 1 steps to the right: [99,-1,-100,3]
# rotate 2 steps to the right: [3,99,-1,-100]
 

# Constraints:

# 1 <= nums.length <= 105
# -231 <= nums[i] <= 231 - 1
# 0 <= k <= 105
 

# Follow up:

# Try to come up with as many solutions as you can. There are at least three different ways to solve this problem.
# Could you do it in-place with O(1) extra space?


def rotate(nums, k)
  k.times do
    last_ele = nums[nums.length - 1]
    i = nums.length - 1
    while i > 0 do
      nums[i] = nums[i-1]
      i =  i - 1
    end
    nums[0] = last_ele
  end
  nums
end


# O(n)
def rotate(nums, k)
  rotated_array = []
  for i in (nums.length - k)..(nums.length - 1)
    rotated_array << nums[i]
  end

  for i in 0..(nums.length - k - 1)
    rotated_array << nums[i]
  end
  rotated_array
end


def rotate(nums, k)

  i = 0, j = nums.length -1

  while i < j do
    temp = nums[i]
    nums[i] = nums[j]
    nums[j] = temp
    i = i + 1
    j = j - 1
  end

  i = 0
  j = k - 1


  while i < j do
    temp = nums[i]
    nums[i] = nums[j]
    nums[j] = temp
    i = i + 1
    j = j - 1 
  end

  i = k
  j = nums.length - 1


  while i < j do
    temp = nums[i]
    nums[i] = nums[j]
    nums[j] = temp
    i = i + 1
    j = j - 1 
  end

  nums
end


def rotate(nums, k)

  i = 0, j = nums.length -1
  nums = array_reverse(nums, i, j)

  i = 0
  j = k - 1

  nums = array_reverse(nums, i, j)


  i = k
  j = nums.length - 1

  array_reverse(nums, i, j)
end


def array_reverse(nums, i, j)
  while i < j do
    temp = nums[i]
    nums[i] = nums[j]
    nums[j] = temp
    i = i + 1
    j = j - 1 
  end

  nums
end





