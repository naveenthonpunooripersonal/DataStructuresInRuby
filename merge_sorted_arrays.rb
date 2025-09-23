
def merge_sorted_arrays(array_1, array_2)
  i = 0
  j = 0


  merged_array = []

  while i <= array_1.length && j <= array_2.length

    if i == array_1.length
      for a in j..array_2.length - 1 do
        merged_array << array_1[a]
      end
      break;
    
    elsif j == array_2.length
      for b in i..array_1.length - 1 do
        merged_array << array_1[b]
      end
      break;
    end
    if array_1[i] < array_2[j]
      merged_array << array_1[i]
      i = i + 1;
    else
      merged_array << array_2[j]
      j =  j + 1;
    end
  end
  merged_array
end



def merge_sorted_arrays(array_1, array_2)
  i = 0
  j = 0


  merged_array = []



  while i <= array_1.length && j <= array_2.length

    if i == array_1.length
      for a in j..array_2.length - 1 do
        merged_array << array_2[a]
      end
      break;
    end
    
    if j == array_2.length
      for b in i..array_1.length - 1 do
        merged_array << array_1[b]
      end
      break;
    end

    if array_1[i] < array_2[j]
      merged_array << array_1[i]
      i = i + 1;
    else
      merged_array << array_2[j]
      j =  j + 1;
    end
  end
  merged_array
end