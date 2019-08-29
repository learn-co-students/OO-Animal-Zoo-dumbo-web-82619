require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


z1 = Zoo.new("Bronx Zoo", "Bronx, NY")
z2 = Zoo.new("Central Park Zoo", "New York, NY")

a1 = Animal.new("Cat", 12, "Smokie", z1)
a2 = Animal.new("Dog", 20, "Junior", z2)
a3 = Animal.new("Dog", 30, "Alexander", z1)


binding.pry
puts "done"
