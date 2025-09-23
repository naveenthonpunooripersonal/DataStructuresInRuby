class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  def initialize()
    @root = nil
  end

  def insert(data)
    new_node = Node.new(data)
    if @root.nil?
      @root = new_node
    else
      current_node = @root

      while true do
        if data < current_node.data
          if current_node.left.nil?
            current_node.left = new_node
            break
          end
          current_node = current_node.left
        else
          if current_node.right.nil?
            current_node.right = new_node
            break
          end
          current_node = current_node.right
        end
      end
    end
  end
  
  def delete(data)
    current_node = @root
    while true do
      
    end
  end

  def search(data)
  end
end