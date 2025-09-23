def bubble_sort(array)
  for i in 0..(array.length - 2) do
    sorted = true
    for j in 0..(array.length - i - 2) do
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
        sorted = false
      end
    end
    break if sorted
  end
  array
end


def selection_sort(array)
  for i in 0..array.length - 2 do
    min_key = i
    for j in (min_key+1)..(array.length - 1) do
      min_key = j if array[min_key] > array[j]
    end

    if min_key != i
      temp = array[i]
      array[i] = array[min_key]
      array[min_key] = temp
    end
  end
  array
end


selection_sort([-2, 45, 0, 11, -9, 65, -15])


def insertion_sort(array)
 for i in 1..(array.length - 1) do

    key = array[i]

    j = i - 1

    while j >= 0 do

      if (array[j] > key)
        array[j+1] = array[j]
        j = j - 1
      else
        break
      end
    end

    array[j + 1] = key
 end
 array
end

insertion_sort([-2, 45, 0, 11, -9, 65, -15])



class MergeSort
  attr_reader :array, :array_length
  
  def initialize(array)
    @array = array
    @array_length = array.length
  end

  def sort
    sub_array_length = 1
    while sub_array_length < array_length

      interation_index = 0


      while interation_index < array_length

        
        left_array_start_index = interation_index
        left_array_end_index = interation_index + sub_array_length - 1
        right_array_start_index = left_array_end_index + 1
        right_array_end_index = right_array_start_index + sub_array_length - 1

        puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        puts "left_array_start_index => #{left_array_start_index}"
        puts "left_array_end_index => #{left_array_end_index}"
        puts "right_array_start_index => #{right_array_start_index}"
        puts "right_array_end_index => #{right_array_end_index}"        
        
        merge(left_array_start_index, left_array_end_index, right_array_start_index, right_array_end_index)


        
        interation_index =  interation_index + sub_array_length * 2
      end
         puts "sorted_array => #{array}"
        puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

      sub_array_length = sub_array_length*2
    end
    array
  end

  def merge(left_array_start_index, left_array_end_index, right_array_start_index, right_array_end_index)
    left_array = []
    right_array =  []


    for i in left_array_start_index..left_array_end_index do
      left_array << array[i]
    end

    for j in right_array_start_index..right_array_end_index do
      right_array << array[j] if (j < array_length)
    end
    
    puts "left_array => #{left_array}"
    puts "right_array => #{right_array}"



    insertion_index = left_array_start_index

    left_array_iteration_index = 0
    right_array_iteration_index = 0
    

    while (left_array_iteration_index < left_array.length ) && (right_array_iteration_index < right_array.length)
      puts "insertion_index => #{insertion_index}"

      # puts "left_array[left_array_iteration_index]  => #{left_array[left_array_iteration_index]}"
      # puts "right_array[right_array_iteration_index] => #{right_array[right_array_iteration_index]}"

      if (left_array[left_array_iteration_index] < right_array[right_array_iteration_index])

        array[insertion_index] = left_array[left_array_iteration_index]

        left_array_iteration_index = left_array_iteration_index + 1
      else

        array[insertion_index] =  right_array[right_array_iteration_index]

        right_array_iteration_index = right_array_iteration_index + 1
      end
      insertion_index = insertion_index + 1
    end

    # puts "left_array_iteration_index => #{left_array_iteration_index}"
    # puts "left_array_length => #{left_array.length}"

    if (left_array_iteration_index >= left_array.length)
      while (right_array_iteration_index <  right_array.length)
        puts "insertion_index => #{insertion_index}"

        array[insertion_index] = right_array[right_array_iteration_index]

        right_array_iteration_index = right_array_iteration_index + 1
        insertion_index =  insertion_index + 1
      end
    end

    if (right_array_iteration_index >= right_array.length)
      while left_array_iteration_index < left_array.length
        puts "insertion_index => #{insertion_index}"

        array[insertion_index] = left_array[left_array_iteration_index]

        left_array_iteration_index = left_array_iteration_index + 1
        insertion_index = insertion_index + 1
      end
    end
  end
end


MergeSort.new([-2, 45, 0, 11, -9, 65, -15]).sort




def sum_num_until_single_digit(num)
  sum = 0
  while true do
    sum = sum + num%10
    num = num/10

    if num == 0 
      if sum > 9
        num = sum
        sum = 0
      else
        break;
      end
    end
  end
  sum
end