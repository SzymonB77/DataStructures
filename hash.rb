def Hash
  def initialize 
    @hashes = {}
    @hashes
  end

  def add(key, value)
    @hashes[key] = value
  end

  def remove(key)
    @hashes.delete(key)
  end

  def find(key)
    @hashes[key]
  end

  def print
    @hashes.each {|key, value| puts "#{key} : #{value}"}
  end

  def keys
    @hashes.keys
  end

  def values
    @hashes.values
  end

  def isEmpty
    @hashes.empty?
  end
end
