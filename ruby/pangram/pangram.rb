class Pangram
  def self.pangram?(sentence)
    letter_array = sentence.downcase.chars.each_with_object([]) do |element, letters|
      letters << element if element =~ /[a-z]/
    end.uniq.sort

    letter_array.length == 26
  end
end