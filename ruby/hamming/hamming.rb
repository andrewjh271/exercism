module Hamming
  def self.compute(a, b)
    raise ArgumentError unless a.length == b.length

    a.chars.zip(b.chars).count { |arr| arr[0] != arr[1] }
  end
end

# original solution:
# a.chars.each_with_index.reduce(0) { |sum, (char, i)| char == b[i] ? sum : sum += 1 }