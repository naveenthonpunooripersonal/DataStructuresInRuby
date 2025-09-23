class MyArray
  attr_reader :length
  
  def initialize
    @data = {}
    @length = 0
  end

  def lookup(index)
    @data[index]
  end

  def pop
    last_item = @data[@length - 1]
    @data.delete(@length - 1)
    @length = @length - 1
    last_item
  end

  def push(value)
    @data[@length] = value
    @length = @length + 1
    @length
  end

  def insert(index, value)
    current_length = @length

    while(current_length > index) do
      @data[current_length] =  @data[current_length - 1]
      current_length = current_length - 1
    end
    @data[index] = value
    @length = @length + 1
    elements
  end

  def delete(index)
    while index < @length - 1 do
      @data[index] = @data[index + 1]
      index = index + 1 
    end
    @data.delete(@length - 1)
    @length = @length -  1
    elements
  end

  def elements
    eles = []
    @data.each do |k, v|
      eles << v
    end
    eles
  end
end

my_array = MyArray.new
my_array.push(5)
my_array.push(6)
puts "Pushing 5, 6 to array"
puts "elements: #{my_array.elements}"
puts "length: #{my_array.length}"
puts "Poping array"
my_array.pop
puts "elements: #{my_array.elements}"
puts "length: #{my_array.length}"
my_array.push(6)
my_array.push(7)
my_array.push(8)
puts "elements: #{my_array.elements}"
puts "length: #{my_array.length}"
my_array.insert(2, 10)
puts "elements: #{my_array.elements}"
puts "length: #{my_array.length}"
my_array.delete(2)
puts "elements: #{my_array.elements}"
puts "length: #{my_array.length}"
puts "element at index 2 => #{my_array.lookup(2)}"

