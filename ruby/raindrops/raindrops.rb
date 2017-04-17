class Raindrops
  CONVERT_RULE = {
      'Pling' => 3,
      'Plang' => 5,
      'Plong' => 7
  }
  def self.convert(num)
    result = ''

    CONVERT_RULE.each_pair do |key, value|
      result = result + key if num % value == 0
    end

    result == '' ? num.to_s : result
  end
end

module BookKeeping
  VERSION = 3
end
