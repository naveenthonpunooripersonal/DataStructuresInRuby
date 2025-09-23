#time complexity O(n^2)

class MaxScore
  def initialize(str)
      @str = str
      @length = str.length
  end

  def max_score
      index  = 1
      max_score = 0
      while index < @length do
          left_arr_count = count_ele(0, index - 1)
          right_arr_count = count_ele(index, @length - 1)
          total_count = left_arr_count + right_arr_count
          max_score = total_count if max_score < total_count
          index = index + 1
      end
      max_score
  end

  def count_ele(start_index, end_index)
      comparing_ele =  start_index == 0 ? '0' : '1'
      ele_count = 0
      while start_index <= end_index do
         ele_count = ele_count + 1 if @str[start_index] == comparing_ele
         start_index = start_index + 1
      end
      ele_count
  end
end


def max_score(s)
  MaxScore.new(s).max_score
end
 # time complexity O(n) pendong need implement