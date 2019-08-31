require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


z1 = Zoo.new("LA Zoo", "LA")
z2 = Zoo.new("Bronx zoo", "NY")
z3 = Zoo.new("NY zoo", "NY")

a1 = Animal.new("cat", "simba", 300, z1)
a2 = Animal.new("dog", "George", 79, z2)
a3 = Animal.new("fish", "George", 79, z2)
# a1.zoo.name = "Bronx zoo" 

binding.pry
puts "done"
