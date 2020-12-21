class Grains
  def self.square(n)
    raise ArgumentError if n < 1 || n > 64
    2**(n-1)
  end

  def self.total
    (0..63).reduce(0) { |s, n| s += 2**n }
  end
end