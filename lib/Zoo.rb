class Zoo

    attr_reader :name, :location

    @@zoos = []

    def initialize(name, location)

        @name = name
        @location = location
        @@zoos << self

    end

    def self.all
        return @@zoos
    end

    def animals

        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species

        species_array = self.animals().map do |animal|
            animal.species
        end

        return species_array.uniq
    end



    def find_by_species(animal_specie)

        self.animals.select do |animal|
            animal.species() == animal_specie
        end
    end


    def animal_nicknames

        self.animals.map do |animal|
            animal.nickname
        end
    end



    def self.find_by_location(location)

        @@zoos.select do |zoo|
            zoo.location == location 
        end
    end

end
