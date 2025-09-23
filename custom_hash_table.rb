class HashTable
  attr_accessor :data

  def initialize(size)
    @data = Array.new(size)
  end

  def _hash(key)
    hash_value = 0
    for i in 0..key.length - 1
      hash_value =  (hash_value + key[i].ord * i) % data.length
    end
    hash_value
  end

  def set(key, value)
    location = _hash(key);
    data[location] = [] if data[location].nil?
    key_exists = false
    for i in 0..(data[location].length - 1)
      if data[location][i][0] == key
         data[location][i][1] = value
         key_exists = true
      end
    end
    data[location] << [key, value] unless key_exists
    data
  end
end