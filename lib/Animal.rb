class Animal
    attr_reader :species, :nickname, :weight, :zoo
    @@all = []

    def initialize(species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        @@all << self
    end


    def Animal.all
        return @@all
    end

    def self.find_by_species(species)
        arr = Animal.all.select do |animal|
            animal.species == species
        end
        arr
    end
end
