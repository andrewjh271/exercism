class Sieve
  attr_reader :max, :composites

  def initialize(max)
    @max = max
    @composites = []
    fill_composites
  end

  def primes
    (2..max).reject { |n| composites.include?(n) }
  end

  private

  def fill_composites
    2.upto(max) do |i|
      next if composites.include?(i)

      2.upto(max / i) { |j| composites << i * j }
    end
  end
end
