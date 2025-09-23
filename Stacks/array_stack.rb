class ArrayStack
  attr_reader :data, :ele_count

  def initialize(size)
    @data = Array.new(size)
    @ele_count = 0
  end

  def push(ele)
    @data[@ele_count] = ele
    @ele_count =  @ele_count + 1
    @data
  end

  def pop
    ele = @data[@ele_count - 1]
    @data[@ele_count - 1] = nil
    @ele_count =  @ele_count - 1
    @data
  end
  
  def peek
    @data[@ele_count - 1]
  end 

  def is_empty
    @ele_count == 0 ? true : false
  end  
end

array_stack = ArrayStack.new(10)
p "Elements Count => #{array_stack.ele_count}"
p array_stack.push(1)
p "Elements Count => #{array_stack.ele_count}"
p array_stack.push(2)
p "Elements Count => #{array_stack.ele_count}"
p array_stack.pop()
p "Elements Count => #{array_stack.ele_count}"
p array_stack.peek()
p "Elements Count => #{array_stack.ele_count}"
p array_stack.is_empty()
p "Elements Count => #{array_stack.ele_count}"
p array_stack.pop()
p "Elements Count => #{array_stack.ele_count}"
p "Elements Empty? => #{array_stack.is_empty()}"
p array_stack.push(1)
p "Elements Count => #{array_stack.ele_count}"
p "Elements Empty? => #{array_stack.is_empty()}"





# Simple Stack Practice
# ========================

class MyQueue
    
  def initialize()
     @stack = []
  end
  
  def push(ele)
    @stack << ele
    @stack
  end
  
  def pop
    @stack.pop
    @stack
  end
  
  def length
    @stack.length
  end
  
  def empty?
    length == 0
  end
end

my_stack = MyStack.new
my_stack.push(1)
p my_stack.push(2)
p my_stack.pop



class Node
  attr_accessor :data, :next
  def initialize(data)
      @data = data
      @next = nil
  end
end

# Stack using Linked list
# ========================
class LinkedListStack
  attr_reader :length
  def initialize()
      @head = nil
      @length = 0
  end
  
  def push(ele)
      new_node = Node.new(ele)
      if @head.nil?
          @head = new_node
      else
          new_node.next = @head
          @head = new_node
      end
      @length = @length + 1
  end
  
  def pop
      current_head = @head
      @head = current_head.next
      @length = @length - 1
  end
  
  def elements
      arr = []
      current_node = @head 
      while current_node do
          arr << current_node.data
          current_node = current_node.next
      end
      arr
  end
  
  def empty?
      @queue.length == 0
  end
end

my_stack = LinkedListStack.new
my_stack.push(1)
puts my_stack.elements

my_stack.push(2)
puts my_stack.elements

my_stack.push(3)
puts my_stack.elements
my_stack.pop()
puts my_stack.elements

my_stack.pop()
puts my_stack.elements