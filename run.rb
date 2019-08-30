require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Bronx", "Bronx Zoo")
z2 = Zoo.new("Lincoln Park", "Lincoln Park Zoo")

a1 = Animal.new("zebra", 100, "zippy")
a2= Animal.new("cheetah", 50, "princess")
a3= Animal.new("cheetah", 50, "princess")
a1.zoo=z1
a2.zoo=z1 
a3.zoo=z1 

binding.pry
puts "done"
