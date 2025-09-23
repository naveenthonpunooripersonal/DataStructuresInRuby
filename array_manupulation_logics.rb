def max_consucutive_one_zero_array(arr)
#   prev_ones_count = 0
#   current_ones_count = 0

#   prev_zeros_count = 0
#   current_zeros_count = 0


#   for i in 0..arr.length-1
#     if arr[i] == 1
#       current_ones_count = current_ones_count + 1

#       if prev_zeros_count < current_zeros_count
#         prev_zeros_count = current_zeros_count
#       end
#       current_zeros_count = 0
#     end

#     if arr[i] == 0
#       current_zeros_count = current_zeros_count + 1

#       if prev_ones_count < current_ones_count
#         prev_ones_count = current_ones_count
#       end
#       current_ones_count = 0
#     end
#   end

#   consucutive_ones_count =  current_ones_count > prev_ones_count ? current_ones_count : prev_ones_count
#   consucutive_zeros_count = current_zeros_count > prev_zeros_count ? current_zeros_count : prev_zeros_count
 
#   puts "#{consucutive_ones_count > consucutive_zeros_count ? consucutive_ones_count : consucutive_zeros_count}"


  # second logic

  maxCount = 0 
  count = 1 # since if first consdition is true count has to be 2

  for i in 1..arr.length - 1
    if arr[i] == arr[i-1]
      count =  count + 1
    else
      maxCount = count if (maxCount < count)
      count = 1
    end
  end
  maxCount < count ? count : maxCount
end

max_consucutive_one_zero_array([1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1])


def move_zeros_at_end(arr)
  # result_arr = Array.new(arr.length)

  # result_arr_start = 0
  # result_arr_end = arr.length - 1

  # for i in 0..arr.length - 1

  #   if arr[i] == 0
  #     result_arr[result_arr_end] = arr[i]
  #     result_arr_end = result_arr_end - 1
  #   else
  #     result_arr[result_arr_start] = arr[i]
  #     result_arr_start = result_arr_start + 1
  #   end
  # end
  # result_arr


  #The idea is to move all the zeros by traversing the array twice.

  # count = 0

  # for i in 0..arr.length - 1
  #   if arr[i] != 0
  #     arr[count] = arr[i]
  #     count = count + 1
  #   end
  # end

  # for j in count..arr.length-1
  #   arr[j] = 0
  # end

  # arr

  # On traversal by swapping

  count = 0

  for i in 0..arr.length-1
    if arr[i] != 0
      temp = arr[count]
      arr[count] = arr[i]
      arr[i] = temp
      count = count + 1
    end
  end

  arr
end

move_zeros_at_end([1, 2, 0, 4, 3, 0, 5, 0])