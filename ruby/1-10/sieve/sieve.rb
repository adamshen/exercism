class Sieve
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def primes
    (1..num).each_with_object([]) do |element, result|
      result << element if element > 1 && is_prime?(element)
    end
  end

  private
  def is_prime?(number)
    result = true

    (2..(number-1)).each do |n|
      if (number % n) == 0
        result = false
        break
      end
    end

    result
  end
end
