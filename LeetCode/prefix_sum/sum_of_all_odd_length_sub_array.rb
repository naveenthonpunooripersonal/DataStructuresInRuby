# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
  return arr[0] if arr.length  == 1
  arr = prepare_prefix_sum(arr)
  sum  = 0
  sub_arr_length = 3
  while sub_arr_length < arr.length 
      prefix_sub_arr_index = sub_arr_length - 1
      while prefix_sub_arr_index < arr.length do
          left_index = prefix_sub_arr_index - sub_arr_length
          left_sum = left_index == -1 ? 0 : arr[left_index]
          sum = sum + arr[prefix_sub_arr_index] - left_sum
          prefix_sub_arr_index = prefix_sub_arr_index + 1
      end
      sub_arr_length = sub_arr_length + 2
  end
  sum = sum + arr[arr.length - 1] if arr.length%2 == 1
  sum + arr[arr.length - 1]
end

def prepare_prefix_sum(arr)
  index  = 1
  while index < arr.length do
       arr[index] = arr[index] + arr[index - 1] 
      index = index + 1
  end
  arr
end