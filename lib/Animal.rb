class Animal
    attr_reader :species , :nickname, :zoo , :find_by_species, :zoo
    attr_writer
    attr_accessor :weight

    @@all =[]
    

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self 
        @zoo = zoo
        #@find_by_species = find_by_species
    end

    def self.all
        return @@all 
    end 

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end 

end
