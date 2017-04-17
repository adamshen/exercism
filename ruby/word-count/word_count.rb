class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    @sentence.downcase.scan(/[a-z0-9']+/).each_with_object({}) do |word, count_result|
      word.delete!('\'') if word =~ /'.*'/

      if count_result.has_key?(word)
        count_result[word] = count_result[word] + 1
      else
        count_result[word] = 1
      end
    end
  end
end