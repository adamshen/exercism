class Grains
  class << self
    def square(num)
      raise ArgumentError unless num.between?(1, 64)

      2 ** (num - 1)
    end

    def total
      (1..64).reduce(0) do |all, num|
        all + square(num)
      end
    end
  end
end