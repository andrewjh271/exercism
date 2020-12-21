class Nucleotide
  attr_reader :histogram

  def self.from_dna(string)
    raise ArgumentError unless string.match?(/\A[ATCG]*\z/)

    new({"A"=>0, "T"=>0, "C"=>0, "G"=>0}.merge(string.chars.tally))
  end

  def initialize(histogram)
    @histogram = histogram
  end

  def count(char)
    histogram[char]
  end
end
