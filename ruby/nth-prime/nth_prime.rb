module IntegerPatch
  refine(Integer) do
    def prime?
      return false if self < 2
      return true if self == 2

      for num in (2..(self-1))
        return false if self % num == 0
      end

      true
    end

    def next_prime
      num = self

      loop do
        num = num + 1
        break if num.prime?
      end

      num
    end
  end
end


class Prime
  using IntegerPatch

  def self.nth(prime_th)
    raise ArgumentError if prime_th < 1

    current_th, current_num = 1, 1

    loop do
      current_num = current_num.next_prime
      return current_num if current_th == prime_th
      current_th = current_th + 1
    end
  end
end

