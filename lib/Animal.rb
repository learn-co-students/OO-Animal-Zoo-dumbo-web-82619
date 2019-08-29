class Animal
    attr_reader :species, :nickname, :weight, :zoo
    attr_writer :weight 

    @@all = []
    
    def initialize(species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        @@all << self 
    end 

    def self.all
        return @@all
    end 

    def self.find_by_species(species)
        Animal.all.select do |animal|
            animal.species ==  species 
        end
    end
end
