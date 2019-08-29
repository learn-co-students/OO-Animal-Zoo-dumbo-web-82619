class Animal
    attr_reader(:species, :nickname)
    attr_accessor(:weight, :zoo)

    @@all = []
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def Animal.all
        @@all
    end

    def Animal.find_by_species(species)
    
        all_species = Animal.all.select do |animal|
            animal.species.downcase == species.downcase
        end
        if all_species.size == 0
            "Sorry, that species does not exist"
        else
            all_species
        end
    end
end
