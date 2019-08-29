class Animal

    attr_reader :nickname, :species, :zoo
    attr_accessor :weight

    @@animal_array = []

    def initialize (nickname, species, weight, zoo)

        @nickname = nickname
        @species = species
        @weight = weight
        @zoo = zoo
        @@animal_array << self

    end

    def self.all
        return @@animal_array
    end

    def self.find_by_species(animals_species)
      array_of_all_animals = @@animal_array.select do |animal|
        animal.species.downcase == animals_species.downcase
         
       end

       return array_of_all_animals
    end

end
