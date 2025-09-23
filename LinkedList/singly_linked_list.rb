class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end


class SinglyLinkedList
  attr_reader :length

  def initialize(data)
    @head = Node.new(data)
    @tail = @head
    @length = 1
  end

  def append(data)
    new_node = Node.new(data)
    @tail.next = new_node
    @tail = new_node
    @length = @length  + 1
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    @length = @length  + 1
  end

  def insert(index, data)
    return prepend(data) if index == 0
    return append(data) if index == @length

    current_node = @head.next
    previous_node = @head
    current_index = 1
    while current_node
      if current_index == index
        new_node = Node.new(data)
        new_node.next = current_node
        previous_node.next = new_node
        @length = @length + 1
        return @length
      end
      current_index = current_index + 1
      previous_node = current_node
      current_node = current_node.next
    end
  end

  def remove(index)

    return remove_first if index == 0
    return remove_last if index >= @length - 1
    
    previous_node = @head
    current_node = @head.next
    current_index = 1
    while current_node do
      if current_index == index
        previous_node.next = current_node.next
        @length = @length - 1
        return length
      end
      current_index = current_index + 1
      previous_node = current_node
      current_node = current_node.next
    end
  end

  def remove_first
    @head = @head.next
    @length = @length - 1
  end

  def remove_last
    last_node = @head
    counter = 0
    while counter < length - 2
      last_node = last_node.next
      counter = counter + 1
    end
    last_node.next = nil
    @tail = last_node
    @length = @length - 1
  end

  def search(data)
    current_node = @head
    while current_node
      return "Found" if current_node.data == data
      current_node = current_node.next
    end
    -1
  end

  def display
    current_node = @head

    while current_node
      puts "Data => #{current_node.data}"
      current_node = current_node.next
    end
  end
end

sll = SinglyLinkedList.new(1)
sll.append(2)
sll.append(3)
sll.prepend(0)
sll.insert(0, -1)
sll.insert(0, -2)

sll.display
puts "length #{sll.length}"
puts "++++++++++++++++++++++++++++"

sll.insert(6, 4)

sll.display
puts "length #{sll.length}"
puts "+++++++++++++++++++"
sll.insert(5, 20)

sll.display
puts "length #{sll.length}"
puts "++++++++++++++++++++++++++++"

sll.remove(20)

sll.display
puts "length #{sll.length}"
puts "++++++++++++++++++++++++++++"


sll.remove(0)

sll.display
puts "length #{sll.length}"
puts "++++++++++++++++++++++++++++"

sll.remove(1)

sll.display
puts "length #{sll.length}"
puts "++++++++++++++++++++++++++++"
