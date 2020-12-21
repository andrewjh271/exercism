class Squares

  def initialize(n)
    @array = (0..n).to_a
  end

  def square_of_sum
    @array.sum**2
  end

  def sum_of_squares
    @array.map { |i| i**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
  
end