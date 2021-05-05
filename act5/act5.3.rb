class Shape

    def area(shape)
        shape.area
    end

end

class Square

    def initialize(side)
        @side = side
    end

    def area
        puts @side**2
    end

end

class Rectangle

    def initialize(length, width)
        @length = length
        @width = width
    end

    def area
        puts @length * @width
    end

end

class Triangle

    def initialize(base, height)
        @base = base.to_f
        @height = height.to_f
    end

    def area
        puts 0.5 * @base * @height
    end

end

shape = Shape.new

square = Square.new(5)
shape.area(square)

rectangle = Rectangle.new(6, 9)
shape.area(rectangle)

triangle = Triangle.new(4, 20)
shape.area(triangle)
