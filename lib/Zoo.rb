class Zoo
    attr_reader :name, :location, :animals
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
        @animals = []
    end

    def self.all
        @@all
    end

    def animal_species
        self.animals.map do |animal| 
            animal.species
        end
        .uniq!
    end

    def animal_nicknames
        self.animals.map do |animal| 
            animal.nickname
        end
    end

    def find_by_species(species)
        self.animals.filter do |animal|
            animal.species == species
        end
    end

    def self.find_by_location(location)
        self.all.filter do |zoo|
            zoo.location == location
        end
    end
end
