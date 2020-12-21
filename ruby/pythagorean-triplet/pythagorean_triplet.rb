class Triplet
  def self.where(max_factor:, min_factor: 1, sum: nil)
    triplets = []
    min_factor.upto(max_factor) do |a|
      break if Math.sqrt(a**2 + (a + 1)**2) > max_factor

      (a + 1).upto(max_factor) do |b|
        c = Math.sqrt(a**2 + b**2)
        break if c > max_factor
        next unless (c % 1).zero?

        triplets << Triplet.new(a, b, c) if sum.nil? || a + b + c == sum
      end
    end
    triplets
  end

  attr_reader :triplets

  def initialize(*triplets)
    @triplets = triplets.sort
  end

  def sum
    triplets.sum
  end

  def product
    triplets.reduce { |n, product| product *= n }.to_i
  end

  def pythagorean?
    triplets.first(2).map { |n| n**2 }.sum == triplets.last**2 &&
      triplets.length == triplets.uniq.length
  end
end
