# Implementation of array in below fromat. we consider the last element in array as first element

# [nil, nil, nil, nil, nil, nil, nil, 3, 2, 1]


class ArrayQueue
  attr_reader :data, :ele_count

  def initialize(size)
    @data = Array.new(size)
    @array_length = size
    @ele_count = 0
    @front = size - 1
  end

  def enqueue(ele)
    raise "Over Flow" if @front == -1

    @data[@front] = ele
    @ele_count = @ele_count + 1
    @front = @front - 1
    @data
  end

  def peek
    @data[@array_length - 1]
  end

  def dequeue
    i = @array_length - 1
    while (i > @front + 1) do
      @data[i] = @data[i-1]
      i = i - 1
    end
    @ele_count = @ele_count - 1
    @data[@front + 1] = nil
    @front = @front - 1
    @data
  end

  def is_empty()
    @ele_count == 0
  end
end

array_queue = ArrayQueue.new(10)
p "Elements Count => #{array_queue.ele_count}"
p "Elements Empty? => #{array_queue.is_empty()}"
p array_queue.enqueue(1)
p array_queue.enqueue(2)
p array_queue.enqueue(3)
p "Elements Count => #{array_queue.ele_count}"
p "Elements Empty? => #{array_queue.is_empty()}"
p array_queue.dequeue
p "Elements Count => #{array_queue.ele_count}"
p "Elements Empty? => #{array_queue.is_empty()}"

#
