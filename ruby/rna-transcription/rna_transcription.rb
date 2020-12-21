class Complement
  def self.of_dna(string)
    codes = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U',
    }
    string.split('').map { |char| codes[char] }.join
  end
end