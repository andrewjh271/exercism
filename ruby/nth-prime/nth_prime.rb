module Prime
  def self.nth(num)
    raise ArgumentError if num == 0

    # algorithm from Hardy and Wright for approx. nth prime, but requires safeguarding against natural log of 1 or 0
    max = num < 3 ? 3 : num * (Math.log(num) + Math.log(Math.log(num - 1)))
    Sieve.new(max).primes[num - 1]
  end
end

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
