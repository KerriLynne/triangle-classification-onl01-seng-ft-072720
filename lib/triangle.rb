class Triangle
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if (@x <= 0) || (@y <= 0) || (@z <= 0)
      raise TriangleError
    elsif (@x+@y <= @z) || (@x+@z <= @y) || (@y+@z <= @x)
      raise TriangleError
    else
      if (@x == @y) && (@y == @z)
        :equilateral
      elsif (@x == @y) || (@y == @z) || (@x == @z)
        :isosceles
      elsif (@x != @y) && (@y != @z) && (@x != @z)
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError

  end

end
