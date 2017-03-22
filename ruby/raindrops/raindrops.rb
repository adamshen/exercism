class Raindrops
  def self.convert(num)
    result = ''
    result = result + 'Pling' if num % 3 == 0
    result = result + 'Plang' if num % 5 == 0
    result = result + 'Plong' if num % 7 == 0
    result == '' ? num.to_s : result
  end
end

module BookKeeping
  VERSION = 3
end
