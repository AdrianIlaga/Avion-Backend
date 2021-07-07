# The Bad

class FamilyMember
    def job
        puts "Go to job"
    end
end

class Father < FamilyMember
end

class Eldest < FamilyMember
end

class Youngest < FamilyMember
    def job
        raise "Cannot have job yet"
    end
end

father = Father.new
eldest = Eldest.new
youngest = Youngest.new

def show_job(member)
    member.job
end 

show_job(father)
show_job(eldest)
show_job(youngest)

# The Good (Hopefully)

class WorkingFamilyMember
    def job
        puts "Go to Job"
    end
end

class DependentFamilyMember
    def chore
        puts "Do Chores"
    end
end

class Father2 < WorkingFamilyMember
end

class Eldest2 < WorkingFamilyMember
end

class Youngest2 < DependentFamilyMember
end

father = Father2.new
eldest = Eldest2.new
youngest = Youngest2.new

def show_job(member)
    member.job
end 

def show_chore(member)
    member.chore
end

show_job(father)
show_job(eldest)

show_chore(youngest)