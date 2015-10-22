class Pet
    def initialize(pet,sound)
        @pet = pet
        @sound = sound
    end
    
    def pet
        @pet
    end
    
    def type
        @type
    end
end

my_pet = Pet.new("dog","bark")

puts "I have a #{my_pet.pet} and it is a #{my_pet.sound}."