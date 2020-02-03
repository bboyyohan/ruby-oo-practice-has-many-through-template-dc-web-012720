require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

yo = Student.new("Yo")
bri = Student.new("Bri")
carl = Student.new("Carl")
lauren = Student.new("Lauren")
will = Student.new("Will")
wesley = Student.new("Wesley")
valentin = Student.new("Valentin")

book = Club.new("Book Club")
chess = Club.new("Chess Club")
math = Club.new("Math Club")

rel1 = Membership.new(math, yo)
rel2 = Membership.new(book, bri)
rel3 = Membership.new(chess, carl)
rel4 = Membership.new(chess, bri)
rel5 = Membership.new(math, valentin)
rel6 = Membership.new(book, lauren)
rel7 = Membership.new(chess, wesley)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
