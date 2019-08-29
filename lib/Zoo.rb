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

def find_by_species(animal_specie)

         
    species_array = self.animals.select do |animal|
    animal.species == animal_specie
    
    end

    return species_array
end


def animal_nicknames

    nickname_array = self.animals.map do |animal|

       animal.nickname
    
    end
    return nickname_array

end


def self.find_by_location(location)

    location_array = @@zoos.select do |zoo|
    zoo.location == location 
    
    end

    return location_array

end











end
