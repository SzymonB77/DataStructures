class MyHash
  def initialize
    @hashes = []
  end

  def add(key, value)
    raise ArgumentError, 'Key cannot be nil or empty' if key.nil? || key.empty?
    raise ArgumentError, 'Key must be unique' if @hashes.any? { |pair| pair[0] == key }

    @hashes << [key, value]
  end

  def remove(key)
    raise KeyError, 'Key not found' unless @hashes.any? { |pair| pair[0] == key }

    @hashes.delete_if { |pair| pair[0] == key }
  end

  def find(key)
    result = @hashes.find { |pair| pair[0] == key }
    raise KeyError, 'Key not found' unless result

    result
  end

  def print
    @hashes.each { |key, value| puts "#{key} : #{value}" }
  end

  def keys
    @hashes.map do |pair|
      raise "Pair is nil" if pair.nil?

      pair.first
    end
  end

  def values
    @hashes.map do |pair|
      raise "Pair is nil" if pair.nil?

      pair.last
    end
  end

  def empty
    @hashes.empty?
  end
end
