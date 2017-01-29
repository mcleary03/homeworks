# Now let's write a Queue class. We will need the following
# instance methods: enqueue(el), dequeue, and show.

# Test your code to ensure it follows the principle of FIFO.

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end
end

queue = Queue.new

queue.enqueue 1
queue.enqueue 2
p queue.show
queue.dequeue
p queue.show
