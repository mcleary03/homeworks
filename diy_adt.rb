class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def add(el)
    # adds an element to the stack
    @stack << el
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    # return a copy of the stack
    @stack
  end
end

stack = Stack.new

p stack.add 1
p stack.add 2
p stack.add 3
p stack.remove
p stack.show
p stack.add 4
p stack.show
