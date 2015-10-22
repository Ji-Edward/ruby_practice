class Vehicle
    
    def initialize(model,make,year,price)
        
        @model = model
        @make = make
        @year = year
        @price = price
    end
    
    def model
        @model
    end
    
    def make
        @make
    end
    
    def year
        @year
    end
    
    def price
        @price
    end
    
    def new_car(model, make, year,price)
        @model = model
        @make = make
        @year = year
        @price = price
    end
    
    def depreciation
        age = 2016 - @year
        puts "Your car is #{age} years old and it is now worth $#{@price-(age*1000)}."
    end
    
end

my_car = Vehicle.new("A4", "AUDI", 2007,23000)

puts "I used to have a #{my_car.year} #{my_car.make} #{my_car.model}."

puts my_car.depreciation

my_car.new_car("323i","BMW",2016,24000)

puts "I just bought a #{my_car.year} #{my_car.make} #{my_car.model}."

puts my_car.depreciation

