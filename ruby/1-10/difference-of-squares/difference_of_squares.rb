class Squares
  attr_accessor :num

  def initialize(n)
    @num = n
  end

  def square_of_sum
    (1..num).sum ** 2
  end

  def sum_of_squares
    (1..num).reduce(0) do |result, n|
      result + n ** 2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
