class Scrabble
  LETTER_VALUES = {}
  %w[a e i o u l n r s t].each { |letter| LETTER_VALUES[letter] = 1 }
  %w[d g].each { |letter| LETTER_VALUES[letter] = 2 }
  %w[b c m p].each { |letter| LETTER_VALUES[letter] = 3 }
  %w[f h v w y].each { |letter| LETTER_VALUES[letter] = 4 }
  LETTER_VALUES['k'] = 5
  %w[j x].each { |letter| LETTER_VALUES[letter] = 8 }
  %w[q z].each { |letter| LETTER_VALUES[letter] = 10 }

  attr_reader :word

  def self.score(word)
    self.new(word).score
  end

  def initialize(word)
    @word = word || ''
  end

  def score
    word.each_char.sum { |letter| LETTER_VALUES[letter.downcase] || 0 }
  end
end