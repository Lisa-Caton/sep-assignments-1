class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
    @tail = @queue.last
  end

  def enqueue(element)
    @queue << element
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def dequeue
    your_turn = @queue.shift 
    @head = @queue[0]
    @tail = @queue.last
  end

  def empty?
    @queue.empty?
  end
end