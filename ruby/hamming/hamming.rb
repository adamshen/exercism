module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    distance = 0
    a.chars.each_with_index do |element, index|
      distance += 1 unless element == b[index]
    end
    distance
  end
end