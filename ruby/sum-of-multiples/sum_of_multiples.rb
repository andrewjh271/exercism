class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(n)
    (0...n).reduce do |sum, int|
      sum = @multiples.any? { |m| int % m == 0 } ? sum + int : sum
    end
  end
end