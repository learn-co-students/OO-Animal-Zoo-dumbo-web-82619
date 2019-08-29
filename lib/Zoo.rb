class Zoo

attr_reader :name, :location

@@zoos = []

def initialize(name, location)

    @name = name
    @location = location
    @@zoos << self

end

def self.all
    return @@zoos
end

def animals

    Animal.all.select do |animal|
        animal.zoo == self
    end
end

def animal_species

    species_array = []

    animals_in_zoo = self.animals

    animals_in_zoo.each do |animal|

        species_array << animal.species

    end


    species_array.uniq
end














end
