class Node
  attr_accessor :data, :next, :prev

  def initialize(data)
    @data = data
    @next = nil
    @prev = nil
  end
end

class DoublyLinkedList
  attr_reader :length

  def initialize()
    @length = 0
    @head = nil
    @tail = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      new_node.prev = @tail
      @tail.next = new_node
      @tail = new_node
    end
    @length = @length + 1
  end

  def prepend(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      new_node.next = @head
      @head.prev = new_node
      @head = new_node
    end
    @length = @length + 1
  end

  def remove(index)
    return nil if @length == 0 || index < 0 || index >= @length
    
    return remove_first if index == 0
    return remove_last if index == @length - 1
    
    # Find the node to remove
    removable_node = @head
    current_index = 0
    while current_index < index do
      removable_node = removable_node.next
      current_index = current_index + 1
    end
    prev_node = removable_node.prev
    next_node = removable_node.next
    prev_node.next = next_node
    next_node.prev = prev_node
    @length = @length - 1
    @length
  end

  def remove_first
    return nil if @length == 0
    
    removed_data = @head.data
    if @head == @tail
      @head = nil
      @tail = nil
    else
      @head = @head.next
      @head.prev = nil
    end
    @length = @length - 1
    removed_data
  end

  def remove_last
    return nil if @length == 0
    
    removed_data = @tail.data
    if @head == @tail
      @head = nil
      @tail = nil
    else
      @tail = @tail.prev
      @tail.next = nil
    end
    @length = @length - 1
    removed_data
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
    @length == 0
  end

  def get(index)
    return nil if @length == 0 || index < 0 || index >= @length
    
    current_node = @head
    current_index = 0
    while current_index < index do
      current_node = current_node.next
      current_index = current_index + 1
    end
    current_node.data
  end

  def find(data)
    current_node = @head
    index = 0
    while current_node do
      return index if current_node.data == data
      current_node = current_node.next
      index += 1
    end
    nil
  end

  def to_s
    elements.to_s
  end
end