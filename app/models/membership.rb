class Membership
    attr_reader :club, :student
    @@all = []

    def initialize(club, student)
        @club = club
        @student = student
        @@all << self
    end

    def self.all
        @@all
    end

end