require 'pry'
class Triangle
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 == @length2 and @length2 == @length3
      :equilateral
    elsif @length1 == @length2 or @length1 == @length3 or @length2 == @length3
      :isosceles
    elsif @length1 != @length2 and @length1 != @length3 and @length2 != @length3 
      :scalene
    elsif @length1 == 0 or @length2 ==0 or @length3== 0
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end

isosceles = Triangle.new(4,4,5)