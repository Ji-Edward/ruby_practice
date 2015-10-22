puts "Pick a number between 1-10"
num = gets.chomp.to_i
until num > 20
    puts num
    num *= 2
end

puts "Pick a number between 1-10"
num = gets.chomp.to_i
until num < 1
    puts num
    num -= 1
end

puts "Can we go to Itchy Scratchy Land?"
answer = gets.chomp.downcase
until answer == "yes"
puts "Can we go to Itchy Scratchy Land?"
answer = gets.chomp.downcase
if answer == "yes"
    puts "YAY!"
end
end