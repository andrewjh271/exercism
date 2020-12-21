class Palindromes
  attr_reader :largest, :smallest, :products_hash, :products, :max, :min

  Palindrome = Struct.new(:value, :factors)

  def initialize(hash)
    @min = hash[:min_factor] || 1
    @max = hash[:max_factor]
  end

  def generate
    @products_hash = find_products
    @products = products_hash.keys.sort
    @smallest = find_smallest
    @largest = find_largest
  end

  private

  def find_products
    hash = Hash.new([])
    min.upto(max) do |i|
      i.upto(max) { |j| hash[i * j] += [[i, j]] }
    end
    hash
  end

  def palindrome?(num)
    num.to_s == num.to_s.reverse
  end

  def find_smallest
    products.each { |i| return Palindrome.new(i, products_hash[i]) if palindrome?(i) }
  end

  def find_largest
    products.reverse.each { |i| return Palindrome.new(i, products_hash[i]) if palindrome?(i) }
  end
end