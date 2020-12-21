class Triangle
  
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return false unless triangle?
    @sides.all?(@sides[0])
  end

  def isosceles?
    return false unless triangle?
    @sides.each { |side| return true if @sides.count { |s| s == side } >= 2 }
    false
  end

  def scalene?
    !triangle? || equilateral? || isosceles? ? false : true
  end

  private

  def triangle?
    return false unless @sides.all? { |side| side > 0 }
    @sides.each { |side| return false unless @sides.sum - side > side }
    true
  end

end