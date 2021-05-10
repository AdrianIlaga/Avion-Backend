# The Bad

class Father
    
    def father_job
        puts "Take care of children"
    end

end

class Eldest < Father

    def eldest_job
        puts "Look after siblings"
    end

end

class Youngest < Father

    def youngest_job
        puts "Be annoying"
    end

end

Father.new.father_job
Eldest.new.eldest_job
Youngest.new.youngest_job

# The Good (Hopefully)

class Father2
    
    def job
        puts "Take care of children"
    end

end

class Eldest2 < Father2

    def job
        puts "Look after siblings"
    end

end

class Youngest2 < Father2

    def job
        puts "Be annoying"
    end

end

Father2.new.job
Eldest2.new.job
Youngest2.new.job