class Animal

    # Relationship with Zoo:
    #   An Animal object belongs to a Zoo


    # Returns the nickname of the animal.
    # Returns the weight of the animal.
    # Returns the species of the animal.
    # Returns the Zoo of the animal.
    # Instance variable weight can be modified.
    attr_accessor :weight
    attr_reader :species, :nickname, :zoo

    # Will contain all the Animal instances
    @@animals = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@animals << self
    end

    # Returns an array of all the animal instances. Animal.all => @@animals
    # Without the self.all class method, we won't be able to read the animals class variable.
    # Making animals class variable publically avaiable for other classes.
    def self.all
        @@animals
    end

    # Returns an array of all the animals, which are of that species by using select method on all the Animal instances whose species attribute matches the species argument passed by the user
    def Animal.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end

end
