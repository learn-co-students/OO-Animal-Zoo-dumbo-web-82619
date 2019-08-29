class Zoo
    attr_reader :name, :location ,:animal
    attr_writer
    attr_accessor
    @@all = []
    def initialize(name, location)
        @name = name 
        @location = location
        @@all << self
        #@animal_species = Animal.
    
    end

    def animal
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        species = animal.collect do |animal|
            animal.species
        end
        species.uniq  
    end

    def find_by_species(animal_species)
        animal.select do |animal|
            animal.species == animal_species
        end

    end

    def find_by_species(animal_species)
        animal.select do |animal|
            animal.species == animal_species
        end

    end

    def animal_nicknames
        animal.collect do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(location)
        Zoo.all.select do |zoo|
            zoo.location == location
        end
    end

    def self.all
        return @@all 
    end 

end
