class InvaildNucleotideError < StandardError
end

class Complement
  REPLACE_SETTING = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
  }

  def self.of_dna(nucleotides)
    begin
      nucleotides.chars.map do |nucleotide|
        raise InvaildNucleotideError unless REPLACE_SETTING.has_key?(nucleotide)
        REPLACE_SETTING[nucleotide]
      end.join('')
    end
  rescue InvaildNucleotideError
    ''
  end
end

module BookKeeping
  VERSION = 4
end
