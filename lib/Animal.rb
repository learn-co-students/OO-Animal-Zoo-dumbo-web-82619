class Animal

    # Relationship with Zoo:
    #   An Animal object belongs to a Zoo


    # Returns the nickname of the animal.
    # Returns the weight of the animal.
    # Returns the species of the animal.
    attr_accessor :weight
    attr_reader :species, :nickname, :zoo

    # Will contain all the Animal instances
    @@animals = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@animals << self
    end

    # Returns an array of all the animal instances.
    def self.all
        @@animals
    end

    # Returns the zoo instance that the instance belongs to.
    # Instance method
    def zoo=(zoo)
        @zoo = zoo
        zoo.animals << self
    end

    # Returns an array of all the animals, which are of that species.
    def self.find_by_species(species)

    end

end
