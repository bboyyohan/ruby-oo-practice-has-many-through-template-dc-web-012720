class Club
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

end