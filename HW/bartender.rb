puts "How old are you?"
age = gets.chomp.to_i
under = 21-age
if age < 21
    puts "You have "+ under.to_s + " years until I can serve you :("    #OR
    puts "You have "+ (21-age).to_s + " years until I can serve you :("
else
    puts "Great! What would you like to drink?"
end