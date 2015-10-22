puts "pick a number between 1 and 100"
guess = gets.chomp.to_i
if guess == 23
    puts "WOW!"
elsif guess > 19 && guess < 27
    puts "OH!! So close!!!"
elsif guess == 19 || guess == 27
    puts "You are close!"
else
    puts "No!"
end