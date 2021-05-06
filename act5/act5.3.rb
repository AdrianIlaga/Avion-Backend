class Area

    def get(shape)
        shape.area
    end

end

class Shape

    def show_area(area)
        puts "The #{@shape} has an area of #{area}"
    end

end

class Square < Shape

    def initialize(side)
        @side = side
        @shape = "square"
    end

    def area
        @side**2
    end

end

class Rectangle < Shape

    def initialize(length, width)
        @length = length
        @width = width
        @shape = "rectangle"
    end

    def area
        @length * @width
    end

end

class Triangle < Shape

    def initialize(base, height)
        @base = base.to_f
        @height = height.to_f
        @shape = "triangle"
    end

    def area
        0.5 * @base * @height
    end

end

area = Area.new

square = Square.new(5)
area1 = area.get(square)
square.show_area(area1)


rectangle = Rectangle.new(6, 9)
area2 = area.get(rectangle)
rectangle.show_area(area2)

triangle = Triangle.new(4, 20)
area3 = area.get(triangle)
triangle.show_area(area3)
