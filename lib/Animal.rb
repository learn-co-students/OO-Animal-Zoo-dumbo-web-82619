class Animal
  attr_reader :species, :nickname, :zoo
  attr_accessor :weight
  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.select {|animal| animal.species == species}
    # sub-par method
    # self.all.select do |animal| 
    #   animal.species == by_species
    # end
  end
  
end

