class Isogram
  def self.isogram?(input)
    letter_array(input).tally.values.all?(1)
  end

  def self.letter_array(string)
    string.downcase.scan(/\w/)
  end
end