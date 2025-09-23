def second_highest_in_array(arr)

  return nil if arr.length < 2

  first_max = arr[0]
  second_max = arr[1]

  if first_max < second_max
    temp = first_max
    first_max = second_max
    second_max = temp
  end 

  for i in 2..(arr.length - 1)
    if arr[i] > first_max
      second_max = first_max
      first_max = arr[i]
    elsif arr[i] > second_max && arr[i] < first_max
      second_max = arr[i]
    end   
  end

  return nil if first_max == second_max
  second_max
end

second_highest_in_array([1,9,2,7,4,3,8,5,6])

def third_highest_in_array(arr)
  first_max = -1
  second_max = -1
  third_max = -1



  for i in 0..(arr.length - 1)
    if first_max < arr[i]
      second_max = first_max
      first_max = arr[i]
    end 

    if first_max < third_max
      temp = first_max
      first_max = third_max
      third_max = first_max
    end

    if second_max < third_max
      temp = second_max
      second_max = third_max
      third_max = temp
    end
  end
  third_max
end

third_highest_in_array([1,9,2,7,4,3,8,5,6])