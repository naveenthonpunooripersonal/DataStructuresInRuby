# LeetCode 724: Find Pivot Index
# 
# Problem Statement:
# Given an array of integers nums, calculate the pivot index of this array.
#
# The pivot index is the index where the sum of all the numbers strictly to the left 
# of the index is equal to the sum of all the numbers strictly to the index's right.
#
# Edge Cases:
# - If the index is on the left edge of the array, then the left sum is 0 because 
#   there are no elements to the left. This also applies to the right edge of the array.
#
# Return Value:
# - Return the leftmost pivot index. If no such index exists, return -1.

# Example 1:
# Input: nums = [1,7,3,6,5,6]
# Output: 3
# Explanation:
# The pivot index is 3.
# Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
# Right sum = nums[4] + nums[5] = 5 + 6 = 11

# Example 2:
# Input: nums = [1,2,3]
# Output: -1
# Explanation:
# There is no index that satisfies the conditions in the problem statement.

# Example 3:
# Input: nums = [2,1,-1]
# Output: 0
# Explanation:
# The pivot index is 0.
# Left sum = 0 (no elements to the left of index 0)
# Right sum = nums[1] + nums[2] = 1 + -1 = 0

# Time complexity O(n^2)

class PivoteIndex
  def initialize(nums)
      @nums = nums
  end

  def pivot_index
      current_index = 0
      while current_index < @nums.length do
          left_sum =  sub_array_sum(0, current_index - 1)
          right_sum =  sub_array_sum(current_index + 1, @nums.length - 1)
          return current_index if left_sum == right_sum
          current_index = current_index + 1
      end
      return -1
  end

  def sub_array_sum(left, right)
    return 0 if (right == -1) || (left == @nums.length)
    sum = 0
    while left <= right do
      sum = sum +  @nums[left]
      left = left + 1
    end
    sum
  end
end


def pivot_index(nums)
  PivoteIndex.new(nums).pivot_index
end

#==========================================

# Using prefix sum array
# Time complexity O(n)
class PivoteIndex
  def initialize(nums)
      @nums = prefix_sum_array(nums)
  end

  def pivot_index
      current_index = 0
      while current_index < @nums.length do
          left_sum =  sub_array_sum(0, current_index - 1)
          right_sum =  sub_array_sum(current_index + 1, @nums.length - 1)
          return current_index if left_sum == right_sum
          current_index = current_index + 1
      end
      return -1
  end

  def sub_array_sum(left, right)
   return 0  if (right == -1) || (left == @nums.length)
   left_sum = left == 0 ? 0 : @nums[left - 1]
   @nums[right] - left_sum
  end

  def prefix_sum_array(nums)
     index = 1
     while index < nums.length do
      nums[index] = nums[index] + nums[index - 1]
      index  = index + 1
     end
     nums
  end
end


def pivot_index(nums)
  PivoteIndex.new(nums).pivot_index
end