class Animal
    attr_reader :species, :weight, :name, :zoo

    @@all = []

    def initialize(species, weight, name)
        @species=species
        @weight=weight
        @name=name
        @@all<<self
    end

    def zoo=(zoo)
        @zoo=zoo
        zoo.animals<<self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        @@all.select do |animal|
            animal.species == species
        end

    end

end
