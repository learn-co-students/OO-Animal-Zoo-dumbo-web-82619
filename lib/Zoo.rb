

class Zoo
attr_reader :name, :location
@@all = []

def initialize(name, location)
    @name = name
    @location = location
    @@all << self 
end

def animals
    Animal.all.select do |animal|
        animal.zoo == self
    end
end

def animal_species
    # Zoo.animals.species 
    self.animals.map do |animal|
        animal.species 
    end 
end 

def animal_nicknames
    self.animals.map do |animal|
        animal.nickname 
    end 
end 

def find_by_species(species)
    Animal.all.select do |animal|
        animal.species == self
    end
end

def self.find_by_location(location)
    Zoo.all.select do |zoo|
        zoo.location ==  location 
    end
end

def self.all
    return @@all
end

end
