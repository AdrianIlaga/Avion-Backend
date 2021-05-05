class Confection
    def prepare
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class BananaCake < Confection
end

class Cupcake < Confection
    def prepare
        super 
        puts "Apply Frosting"
    end
end

banana_cake = BananaCake.new
cupcake = Cupcake.new
banana_cake.prepare
cupcake.prepare