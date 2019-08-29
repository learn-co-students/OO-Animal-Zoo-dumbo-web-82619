class Zoo

    attr_reader :name, :location, :animals

    @@all=[]

    def initialize(name, location)
        @name=name
        @location=location
        @animals = []
        @@all<<self
    end

    def animal_species
        nonuniq = @animals.each.collect do |animal|
            animal.species
        end
        nonuniq.uniq
    end

    def find_by_species(species)
        @animals.select do |animal| 
        animal.species == species
        end

    end

    def animal_nicknames
        @animals.each.collect do |animal|
        animal.name
        end

    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        @@all.select do |zoo| 
            zoo.location == location
        end
    end

end
