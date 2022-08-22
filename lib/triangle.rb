class Triangle
  # write code here
  def initialize (side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind
    if @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side3 + @side2 > @side1

      if @side1 > 0 && @side2 > 0 && @side3 > 0

        if @side1 == @side2 && @side2 == @side3
          :equilateral
        elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
          :isosceles
        else 
          :scalene
        end

      else
        raise TriangleError
      end
     
    else 
      raise TriangleError
    end

  end

  class TriangleError < StandardError
    def self.message
      "Each side must be larger than 0 and the sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end
  end
  
end