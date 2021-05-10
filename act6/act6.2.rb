# The Bad
class Pokemon
    def initialize(pokemon)
        @pokemon = pokemon
    end

    def choose_starter
        case @pokemon
        when "mudkip"
            mudkip
        when "torchic"
            torchic
        when "treecko"
            treecko
        else
            puts "That's... not a valid pokemon..."
        end
    end

    private

    def mudkip
        puts "I choose Mudkip 'cause he's objectively the best starter!"
    end

    def torchic
        puts "I choose Torchic 'cause fire birb!"
    end

    def treecko
        puts "I choose Treecko 'cause leaf lizard!"
    end

end

Pokemon.new("mudkip").choose_starter
Pokemon.new("torchic").choose_starter
Pokemon.new("treecko").choose_starter
Pokemon.new("rock").choose_starter

# The Good (Hopefully)

class Pokemon2
    def initialize(pokemon)
        @pokemon = pokemon
    end

    def choose_starter
        case @pokemon
        when "mudkip"
            Mudkip.new.choose_starter
        when "torchic"
            Torchic.new.choose_starter
        when "treecko"
            Treecko.new.choose_starter
        else
            puts "That's... not a valid pokemon..."
        end
    end

end

class Mudkip

    def choose_starter
        puts "I choose Mudkip 'cause he's objectively the best starter!"
    end

end

class Torchic

    def choose_starter
        puts "I choose Torchic 'cause fire birb!"
    end

end

class Treecko

    def choose_starter
        puts "I choose Treecko 'cause leaf lizard!"
    end

end

Pokemon2.new("mudkip").choose_starter
Pokemon2.new("torchic").choose_starter
Pokemon2.new("treecko").choose_starter
Pokemon2.new("rock").choose_starter