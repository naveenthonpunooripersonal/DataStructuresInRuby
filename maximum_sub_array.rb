def max_sub_array(nums)
  max_sum = -1000000000000
  max_array = []
  for sub_arr_length in 0..nums.length - 1
    for sub_arra_start_index in 0..nums.length - sub_arr_length
      sub_array_sum = 0
      sub_array = []
      for sub_arra_index in sub_arra_start_index..(sub_arra_start_index + sub_arr_length)
        sub_array_sum = sub_array_sum + nums[sub_arra_index]
        sub_array << nums[sub_arra_index]
      end
      if sub_array_sum > max_sum
        max_sum = sub_array_sum
        max_array = sub_array
      end
    end
  end
  return max_array
end