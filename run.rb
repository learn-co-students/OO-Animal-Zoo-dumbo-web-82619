require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronx = Zoo.new("Bronx Zoo", "Bronx Borough")
manhattan = Zoo.new("Manhattan Zoo", "NYC")
brooklyn = Zoo.new("Brooklyn Zoo", "Brooklyn Borough")
brooklyn2 = Zoo.new("Other Brooklyn Zoo", "Brooklyn Borough")

tiger = Animal.new("Tiger", 153, "Leo", bronx)
lion = Animal.new("Lion", 164, "Tigger", manhattan)
hawk = Animal.new("Hawk", 24, "Hawkeye", brooklyn)
seal = Animal.new("Seal", 104, "Dewgong", brooklyn)
leopard = Animal.new("Leopard", 155, "Panther", brooklyn)
elephant = Animal.new("Elephant", 600, "Dumbo", brooklyn)
elephant2 = Animal.new("Elephant", 700, "Cetha", brooklyn)


binding.pry
puts "done"
