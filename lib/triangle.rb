class Triangle
  # write code here
  attr_reader :x, :y ,:z

  def initialize x, y, z

    @x = x
    @y= y
    @z = z

  end
  def kind
    validate_triangle
    if x == y && y == z
      :equilateral 
    elsif x ==y || y==z || z==x
       :isosceles
    else
       :scalene 
    end
  end
  def not_zero?
    [x, y, z].all?(&:positive?)
  end

  def not_equal?
    x + y > z && x + z > y && y + z > x
  end

  def validate_triangle
    raise TriangleError unless not_zero? && not_equal?
  end

  class TriangleError < StandardError
  end
end
