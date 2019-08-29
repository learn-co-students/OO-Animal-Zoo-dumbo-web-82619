require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("bronx zoo", "New York")
z2 = Zoo.new("manhatten", "New York")


a1 = Animal.new("cat",15,"mr.roger",z2)
a2 = Animal.new("dog",15,"herbert",z2)
a6 = Animal.new("dog",15,"groover",z2)
a3 = Animal.new("rat",15,"mr.pizza",z1)
a4 = Animal.new("kangaroo", 40, "australia", z1)
a5 = Animal.new("lion",100,"simba",z1)




binding.pry
puts "done"
