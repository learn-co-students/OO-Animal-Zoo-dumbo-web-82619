require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here




zoo1 = Zoo.new("Central Park Zoo", "Manhattan")
zoo2 = Zoo.new("Bronx Zoo", "Bronx")

animal1 = Animal.new("Lion", "Mamal", 200, zoo1)
animal2 = Animal.new("Jaguar", "Mamal", 150, zoo1)
animal3 = Animal.new("Lizard", "Reptile", 3, zoo1)


animal4 = Animal.new("Dog", "Mamal", 1000, zoo2)
animal5 = Animal.new("Canguru", "Mamal", 170, zoo2)
animal6 = Animal.new("Chicken", "Bird", 15, zoo2)

zoo1.animals

binding.pry
puts "done"