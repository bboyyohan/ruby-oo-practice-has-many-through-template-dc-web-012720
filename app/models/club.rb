class Club
    attr_reader :name
    attr_accessor :treasury
    @@all = []

    def initialize(name)
        @treasury = 0
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def memberships
        Membership.all.select { |relationship|
            relationship.club == self
        }
    end

    def students
        self.memberships.map {|mem|
            mem.student
        }
    end

    def self.most_students
        self.all.max_by { |club|
            club.students.count
        }
    end

    def fundraiser 
        @treasury += (students.count * 2)
    end 

    def student_names
        self.students.map { |student| student.name }
    end 

    def self.poorest_club
        self.all.min_by { |club| club.treasury}
    end 

    def dance
    
        if @treasury < (students.count * 2)
            "You don't have enough money in the account to go to a dance."
        else 
            @treasury -= (students.count * 2)
            "Have fun at your dance, you have #{treasury} dollars left in your account."
        end 

    end 

    

    def self.least_popular_club
        self.all.select { |club| 
    club.students.count < 2}
    end 

end