puts "What?"
says=gets.chomp.capitalize
until says == "I'm a dummy"
    puts says
    says=gets.chomp.capitalize
end