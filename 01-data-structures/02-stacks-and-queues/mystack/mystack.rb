class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    @top = nil
  end

  def push(item)
    @stack << item
    @top = @stack.last
  end

  def pop
    item = @top
    if !empty?
      # Last In First Out
      @stack.delete_at(@stack.length - 1)
      @top = @stack.last
    end
    item 
  end

  # The empty? function returns false if one or more elements
  # remain in the structure.
  def empty?
    @stack.empty?
  end
end