class Zoo
    attr_reader(:name, :location)
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def Zoo.all
        @@all
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        species = self.animals.map do |animal|
            animal.species
        end
        species.uniq
    end
    
    def find_by_species(species)
        all_species = self.animals.select do |animal|
            animal.species.downcase == species.downcase
        end
        if all_species.size == 0
            "Sorry, we do not have that species here"
        else
            all_species
        end
    end

    def animal_nicknames
        self.animals.map do |animal|
            animal.nickname
        end
    end

    def Zoo.find_by_location(location)
        zoo_locations = Zoo.all.select do |zoo|
            zoo.location.downcase == location.downcase
        end
        if zoo_locations.size == 0
            "We do not have a zoo at that location"
        else
            zoo_locations
        end
    end
end
