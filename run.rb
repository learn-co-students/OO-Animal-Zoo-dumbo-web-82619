require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bk_zoo = Zoo.new("The Zoo", "Brooklyn")
anim1 = Animal.new("dog", 22, "doggie", bk_zoo)
anim2 = Animal.new("cat", 23, "kitty", bk_zoo)
anim3 = Animal.new("dog", 55, "frost", bk_zoo)

fe_zoo = Zoo.new("Garreg Mach", "Fodlan")
anim1 = Animal.new("deer", 22, "Claude", fe_zoo)
anim2 = Animal.new("eagle", 23, "Edelgard", fe_zoo)
anim3 = Animal.new("lion", 55, "Dimitri", fe_zoo)

binding.pry
puts "done"
