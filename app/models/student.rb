class Student
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def memberships
        Membership.all.select { |relationship|
            relationship.student == self
        }
    end

    def clubs
        self.memberships.map { |membership|
            membership.club
        }
    end

    def self.most_clubs
        self.all.max_by { |student|
            student.clubs.count
        }
    end

    

end