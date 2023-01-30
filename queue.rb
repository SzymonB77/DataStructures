class Queue
  def initialize
    @queues = []
  end

  def push(item)
    @queues.unshift(item)
  end

  def peek
    @queues[@queues.length - 1]
  rescue IndexError => e
    puts "Wystąpił błąd: #{e.message}"
  end

  def pop
    @queues.delete_at(@queues.length - 1)
  rescue IndexError => e
    puts "Wystąpił błąd: #{e.message}"
  end

  def print
    puts @queues
  end

  def empty
    @queues.empty?
  end

  def size
    @queues.length
  end
end
