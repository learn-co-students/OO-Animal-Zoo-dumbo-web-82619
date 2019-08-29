class Zoo

    # Relationship with Animal:
    #   A Zoo object has-many Animals


    # Returns the name of the zoo instance.
    # Returns the location of the zoo instance.
    attr_reader :name, :location

    # Will contain all the Zoo instances
    @@zoo = []
    @@animals = []

    def initialize(name, location)
        @name = name
        @location = location

        # shovels in all the zoo's
        @@zoo << self
    end

    # Returns an array of all the zoo instances
    def self.all
        @@zoo
    end

    # Returns all the animals that a specific instance of a zoo has
    def animals
        @@animals
    end

    # Returns an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
    def animal_species
    end

    # Returns an array of all the animals in that zoo, which are of that species.
    def find_by_species(species)
    end

    # Returns an array of all the nicknames of animals that a specific instance of a zoo has.
    def animal_nicknames
    end

    # Returns an array of all the zoos within that location.
    def self.find_by_location(location)
    end

end
