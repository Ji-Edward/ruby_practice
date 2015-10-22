hash = {"civic" => "honda", "corolla" => "toyota", "a4" => "audi", "f150" => "ford"}
puts "what is the model of your car?"
car=gets.chomp.downcase
    
    hash.each do |key, value|
        if car == key
            puts "Oh you drive a #{key}! That's a #{value}, right?"
        end
    end
            puts car +"'s are very nice!"