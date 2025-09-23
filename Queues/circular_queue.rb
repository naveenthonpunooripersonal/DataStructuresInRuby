# Implementation of array in below fromat. we consider the first element in array as first element

# [1, 2, 3, nil, nil, nil, nil, nil, nil, nil]



class ArrayQueue
  attr_reader :data, :size, :ele_count, :rear, :front 

  def initialize(size)
    @data = Array.new(size)
    @rear = -1
    @size = size
    @ele_count = 0
    @front  =  -1
  end

  def enqueue(ele)
     raise "Over flow" if (@ele_count == @size)

    #  if (@rear > @front)
    if @rear == size - 1 && @ele_count < @size
          @rear = 0
        # else
        #   @rear = @rear + 1
        # end
     else
        @rear = @rear + 1
     end
    
     @front =  0 if empty?
     @data[@rear] = ele
     @ele_count = @ele_count + 1
     @data
  end

  def dequeue
    raise "Over flow" if empty?

    @data[@front] = nil
    @ele_count = @ele_count - 1

    if @ele_count == 0
      @front = -1
    elsif @front == size - 1
      @front = 0
    else
      @front =  @front + 1
    end
    @data
  end

  def peek
    @data[0]
  end

  def empty?
    @ele_count == 0
  end
end



array_queue = ArrayQueue.new(6)
p "Elements Count => rear: #{array_queue.rear} == #{array_queue.front}"
p "Elements Empty? => #{array_queue.empty?()}"
p array_queue.enqueue(1)
p array_queue.enqueue(2)
p array_queue.enqueue(3)
p array_queue.enqueue(4)
p array_queue.enqueue(5)
p array_queue.enqueue(6)
p "Elements Count => rear: #{array_queue.rear} == #{array_queue.front}"
p "Elements Empty? => #{array_queue.empty?()}"
p array_queue.dequeue
p "Elements Count => rear: #{array_queue.rear} == #{array_queue.front}"
p "Elements Empty? => #{array_queue.empty?()}"
p array_queue.enqueue(1)
p "Elements Count => rear: #{array_queue.rear} == #{array_queue.front}"
p array_queue.dequeue
p "Elements Count => rear: #{array_queue.rear} == #{array_queue.front}"
p array_queue.enqueue(2)
p "Elements Count => rear: #{array_queue.rear} == #{array_queue.front}"