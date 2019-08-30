class Zoo

    # Relationship with Animal:
    #   A Zoo object has-many Animals


    # Returns the name of the zoo instance.
    # Returns the location of the zoo instance.
    attr_reader :name, :location

    # Will contain all the Zoo instances
    @@zoo = []

    def initialize(name, location)
        @name = name
        @location = location
        @@zoo << self
    end

    # Returns an array of all the zoo instances by returning the zoo class variable
    def self.all
        @@zoo
    end

    # Returns all the animal instances that belong to this Zoo instance by using select method on the all class method from Animal call and return the Animal instances whose Zoo attribute matches the Zoo instance
    # Will serve as a helper method
    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    # Returns an array of the unique species by using map method on all the animals of the Zoo instance and adding these animals to all_species array and then using unique method on this array
    # Invoking the animals method in order to grab all the animals of this zoo (helper method).
    def animal_species
        all_species = self.animals.map do |animal|  #self in self.animals.map is optional but recommended
            animal.species
        end
        all_species.uniq
    end

    # Returns an array of all the animals in that Zoo instances, which are of that species by using select method on all the animals of the Zoo instances whose species attribute matches the species argument that is passed by user
    def find_by_species(species)
        self.animals.select do |animal|
            animal.species == species   # Remember that species in animal.species is really the reader method species()
        end
    end

    # Returns an array of all the nicknames of animals that a specific instance of a zoo has by using map method on all the animals in that Zoo instance and storing only the nickname attribute of each Animal instance
    def animal_nicknames
        self.animals.map do |animal|
            animal.nickname
        end
    end

    # Returns an array of all the zoos within that location by using select method on all the zoos whose location attribute matches the location argument passed by the user
    def self.find_by_location(location)
        Zoo.all.select do |zoo|     # Could have written @@zoo.select instead too
            zoo.location == location
        end
    end

end
