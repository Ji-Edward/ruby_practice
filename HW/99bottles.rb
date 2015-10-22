class Bottles
    
    def initialize(bottles)
        @bottles = bottles
    end
    
    def bottles
        @bottles
    end
    
    def dec
        @bottles -= 1
    end
    
end

bott = Bottles.new(100)
bott.bottles
until bott.bottles == 0
    bott.dec
    puts "#{bott.bottles} bottles of beer on the wall"
    puts "#{bott.bottles} bottles of beer"
    if bott.bottles == 0
        puts ":("
    else
    puts "Take one down pass it around"
    end
    
end