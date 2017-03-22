class Integer
  ROMAN_TABLE = [
      { one: 'I', five: 'V', ten: 'X' },
      { one: 'X', five: 'L', ten: 'C' },
      { one: 'C', five: 'D', ten: 'M' },
      { one: 'M' }
  ]

  def to_roman
    num = self
    raise 'out of ranger' if num > 3999

    (0..3).to_a.reverse.each_with_object('') do |position, result|
      number = num / (10 ** position)
      result << _to_roman(number, position)
      num = num % (10 ** position)
    end
  end

  private
  def _to_roman(number, position)
    letters = ROMAN_TABLE[position]

    case number
      when 9
        letters[:one] + letters[:ten]
      when 5..8
        letters[:five] + letters[:one] * (number - 5)
      when 4
        letters[:one] + letters[:five]
      when 1..3
        letters[:one] * number
      else
        ''
    end
  end
end