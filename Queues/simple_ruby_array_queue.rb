
# Sinple queue mechanism
# =========================
class MyQueue
  def initialize()
      @queue = []
  end
  
  def enqueue(ele)
      @queue << ele
      @queue
  end
  
  def dequeue
      @queue.shift
      @queue
  end
  
  def empty?
      @queue.length == 0
  end
end

my_queue = MyQueue.new
my_queue.enqueue(1)
my_queue.enqueue(2)
puts my_queue.enqueue(3)
puts my_queue.dequeue()
