# The Bad

class Farm

    def milk
        puts "Use milk"
    end

    def cheese
        puts "Use cheese"
    end

    def leather
        puts "Use leather"
    end

end

class Pizzeria < Farm

    def make_pizza
        meat
        cheese
        dough
    end

    def meat
        puts "Use meat"
    end

    def dough
        puts "Use dough"
    end

end

Pizzeria.new.make_pizza

# The Good

class Farm2

    def milk
        puts "Use milk"
    end

    def cheese
        puts "Use cheese"
    end

    def leather
        puts "Use leather"
    end

end

class Pizzeria2

    def make_pizza
        meat
        cheese
        dough
    end

    def meat
        puts "Use meat"
    end

    def cheese
        Farm2.new.cheese
    end

    def dough
        puts "Use dough"
    end

end

Pizzeria2.new.make_pizza
