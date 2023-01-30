class Stack
  def initialize
    @stacks = []
  end

  def peek
    @stacks[@stacks.length - 1]
  rescue IndexError => e
    puts "Wystąpił błąd: #{e.message}"
  end

  def push(item)
    @stacks.push(item)
  end

  def pop
    @stacks.delete_at(@stacks.length - 1)
  rescue IndexError => e
    puts "Wystąpił błąd: #{e.message}"
  end

  def print
    puts @stacks
  end

  def empty
    @stacks.empty?
  end

  def size
    @stacks.length
  end
end
