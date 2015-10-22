puts "what was your grade?"
grade = gets.chomp.to_i
if grade >= 60
    puts "You passed!"
elsif grade < 60
    puts "Take class again!"
end