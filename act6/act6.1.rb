# The Bad
class Chores

    def do_chores
        dishes = "Dishes: Washed dish!"  
        trash = "Trash: Yeeted outside"
        plants = "Plants: Thrist satisfied"
        
        puts dishes
        puts trash
        puts plants
    end

end

chores = Chores.new.do_chores

# The Good (Hopefully)

class Chores2

    def do_chores
        do_dishes
        throw_trash
        water_plants
    end

    def do_dishes
        dishes = "Dishes: Washed dish!"
        puts dishes
    end

    def throw_trash
        trash = "Trash: Yeeted outside"
        puts trash
    end

    def water_plants
        plants = "Plants: Thrist satisfied"
        puts plants
    end

end

Chores2.new.do_chores