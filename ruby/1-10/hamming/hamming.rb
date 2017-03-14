module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    raise ArgumentError unless a.instance_of?(String) && b.instance_of?(String)
    raise ArgumentError unless a.length == b.length

    distance = 0
    a.chars.each_with_index do |element, index|
      distance += 1 unless element == b[index]
    end
    distance
  end
end