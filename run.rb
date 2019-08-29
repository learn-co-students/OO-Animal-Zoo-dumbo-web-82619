require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

bronx_zoo = Zoo.new("The Bronx Zoo", "Bronx")
brooklyn_zoo = Zoo.new("The Brooklyn Zoo", "Brooklyn")


lion = Animal.new("cat", 220, "Simba", bronx_zoo)
tiger = Animal.new("cat", 200, "Tiggy", bronx_zoo)
bear = Animal.new("bear", 500, "Whinnie", bronx_zoo)
turtle = Animal.new("turtle", 5, "Turdy", brooklyn_zoo)


binding.pry
puts "done"
