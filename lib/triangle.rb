class Triangle

  @sides = []

  def initialize (side1, side2, side3)
    @sides = [side1, side2, side3].sort!
  end

  def kind
    if @sides.any? { |side| side <= 0 } || ( @sides[0] + @sides[1] <= @sides[2] )
      raise TriangleError
      TriangleError.message
    elsif @sides[0] == @sides[1] && @sides[1] == @sides[2]
      return :equilateral
    elsif @sides[0] == @sides[1] ||@sides[1] == @sides[2] || @sides[0] == @sides[2]
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
      "BRO!!! Do you even math? Triangles don't have sides less than zero, and the biggest isn't ever bigger than the other two put together. derrr. much love <3"
  end
end
