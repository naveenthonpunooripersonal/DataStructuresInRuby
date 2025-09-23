class MyHash
  attr_reader :data

  def initialize(size)
    @data = Array.new(size)
  end

  def hash_code(key)
    hash_code = 0
    for i in 0..key.length - 1 do
      hash_code = (hash_code + key[i].ord * i) % data.length
    end
    hash_code
  end

  def set(key, value)
    values = @data[hash_code(key)]
    if values.nil?
      values = [[key, value]]
    else
      value_found = false
      values.map{|ele|
          if ele[0] == key
            value_found = true
            ele[1] = value
          else
            ele
          end
      }
      values << [key, value] unless value_found
    end
    @data[hash_code(key)] = values
    value
  end

  def get(key)
    values = @data[hash_code(key)]
    if values.count > 1
      values.select{|value| value[0] == key }[1]
    else
      values[0][1]
    end 
  end

  def delete(key)
    values = @data[hash_code(key)]
    if values.count > 1
      values.delete_if{|value| value[0] == key }
    else
      values = nil
    end
    @data[hash_code(key)] = values
  end

  def keys
    keys_array = []
    @data.each{|values|
      next if values.nil?
      if values.length > 1
        values.map{|value| keys_array << value[0]}
      else
        keys_array << values[0][0]
      end
    }
    keys_array
  end
end

my_hash = MyHash.new(10)

puts "data => #{my_hash.data}"

my_hash.set("grapes", 100)
my_hash.set("grapes", 13300)
my_hash.set("mangos", 130)
puts "data => #{my_hash.data}"
puts "keys => #{my_hash.keys}"

puts "get value by key for grapes: #{my_hash.get('grapes')}"
puts "get value by key for magos: #{my_hash.get('mangos')}"


def first_reccurring_char(arr)
  hsh = {}
  arr.each do |e|
    if hsh["#{e}"].nil?
      hsh["#{e}"] = true
    else
      return e
    end
  end
end

