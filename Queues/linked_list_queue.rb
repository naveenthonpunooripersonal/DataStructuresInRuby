#Queue using Linked list
# ========================
class Node
  attr_accessor :data, :next
  def initialize(data)
      @data = data
      @next = nil
  end
end


class MyQueue
  attr_reader :length
  def initialize()
      @length = 0
      @head = nil
      @tail = nil
  end
  
  def enqueue(ele)
      new_node = Node.new(ele)
      if @head.nil?
          @head = new_node
      else
          @tail.next = new_node
      end
      @tail = new_node
      @length = @length + 1
  end
  
  def dequeue
      @head = @head.next
      @length = @length - 1
  end
  
  def display
      arr = []
      current_node = @head
      while current_node do
          arr << current_node.data
          current_node =  current_node.next
      end
      arr
  end
  
  def empty?
      @queue.length == 0
  end
end

my_queue = MyQueue.new
my_queue.enqueue(1)
puts my_queue.display

my_queue.enqueue(2)
puts my_queue.display

my_queue.enqueue(3)
puts my_queue.display
my_queue.dequeue()
puts my_queue.display