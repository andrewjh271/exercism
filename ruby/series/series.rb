# class Series
#   def initialize(string)
#     @string = string
#   end
  
#   def slices(n)
#     raise ArgumentError if n > @string.length
#     arr = []
#     (0..@string.length - n).each { |i| arr << @string.slice(i, n) }
#     arr
#   end
# end

# mentor suggestions:

# using map: (0..string.length - n).map { |i| string.slice(i, n) }
# using each_cons...

# first try:
# # string.split('').each_cons(n).map { |a| a.join }

# additional suggestion: use String#chars method and &: 



class Series

  private

  attr_reader :string

  public

  def initialize(string)
    @string = string
  end
  
  def slices(n)
    raise ArgumentError if n > string.length
    string.chars.each_cons(n).map(&:join)
  end
end