def Queue
  def initialize 
    @queues = []
    @queues
  end

  def push(item)
    @queues.unshift(item)
  end

  def peek
    puts @queues[@queues.length - 1]
  end

  def pop
    @queues.delete_at[@queues.length - 1]
  end

  def print 
    puts @queues
  end

  def isEmpty
    @queues.empty?
  end

  def size
    @queues.length
  end
end