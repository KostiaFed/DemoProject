#task 2 https://www.codewars.com/kata/geometry-basics-circle-area-in-2d

class Point
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y 
  end
end

class Circle
  attr_accessor :center, :radius
  def initialize(center, radius)
    @center = center
    @radius = radius
  end
end

def circle_area(circle)
    Math::PI * circle.radius ** 2
end
