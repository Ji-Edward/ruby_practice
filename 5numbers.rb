array = []
puts "give 5 numbers"
5.times do
    input = gets.chomp.to_i
        array.push input
    end
puts array

puts array.inject(:+)
puts array.max
puts array.min
puts array.inject(:*)