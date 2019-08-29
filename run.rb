require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Bronx Zoo", "Bronx")
z2 = Zoo.new("Queens Zoo", "Queens")
z3 = Zoo.new("Central Park Zoo", "Manhattan")

c1 = Animal.new("Turkish Angora", "Luna", 7, z1)
c2 = Animal.new("Tiger", "Tigey", 10, z1)
r1 = Animal.new("American Alligator", "Teethey", 500, z1)
r2 = Animal.new("Chinese Alligator", "Chomper", 85, z2)
b1 = Animal.new("Otrich", "Long Neck", 250, z2)
b1 = Animal.new("African Grey", "Beaky", 1, z3)




binding.pry
puts "done"
