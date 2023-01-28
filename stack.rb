def Stack
  def initialize 
    @stacks = []
    @stacks
  end
  def peek
    puts @stacks[@stacks.length - 1]
  end

  def push(item)
    @stacks[@stacks.length] = item
  end

  def pop
    @stacks.delete_at[@stacks.length - 1]
  end

  def print 
    puts @stacks
  end

  def isEmpty
    @stacks.empty?
  end

  def size
    @stacks.length
  end
end