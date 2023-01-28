class MyArray
  def initialize
    @arrays = []
    @arrays
  end

  def push(item)
    @arrays[@arrays.length] = item
  end

  def pop
    @arrays.delete_at[@arrays.length - 1]
  end

  def shift
    @arrays.delete_at[0]
  end

  def unshift
    @arrays.unshift = item
  end

  def print
    puts @arrays
  end

  def peek
    puts @arrays[@arrays.length - 1]
  end

  def isEmpty
    @arrays.length == 0
  end

  def size
    @arrays.length
  end
end
