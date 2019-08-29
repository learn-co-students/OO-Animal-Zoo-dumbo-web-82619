class Animal

    attr_reader :nickaname, :species, :zoo
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




end
