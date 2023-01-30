class MyArray
  def initialize
    @arrays = []
  end

  def push(item)
    @arrays.push(item)
  end

  def pop
    @arrays.delete_at(@arrays.length - 1)
  rescue IndexError => e
    puts "Wystąpił błąd: #{e.message}"
  end

  def shift
    @arrays.delete_at(0)
  rescue IndexError => e
    puts "Wystąpił błąd: #{e.message}"
  end

  def unshift(item)
    @arrays.unshift(item)
  end

  def print
    puts @arrays
  end

  def peek
    @arrays[@arrays.length - 1]
  rescue IndexError => e
    puts "Wystąpił błąd: #{e.message}"
  end

  def empty
    @arrays.empty?
  end

  def size
    @arrays.length
  end
end
