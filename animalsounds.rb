puts "what animal sound would you like to hear?"
animal = gets.chomp.downcase
if animal == "dog"
    puts "woof"
elsif animal == "cat"
    puts "meow"
elsif animal == "snake"
    puts "sssssss"
elsif animal == "pig"
    puts "oink oink"
elsif animal == "lion"
    puts "roar"
else
    puts "unknown"
end