class Zoo
    attr_reader :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        animal_array = self.animals.collect do |animal|
            animal.species 
        end
        animal_array.uniq
    end

    def find_by_species(species)
        self.animals.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        self.animals.collect do |animal|
            animal.nickname
        end
    end

    def Zoo.find_by_location(location)
        zoo_location = Zoo.all.select do |zoo|
            zoo.location == location
        end
        zoo_location
    end

    def Zoo.all
        return @@all
    end

end
