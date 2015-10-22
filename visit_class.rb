visited = []
puts "Please enter in all the U.S. states that you have visited."
completion = true

while completion
    states = gets.chomp.upcase
    
    if states != 'DONE'
        visited.push(states)
    
    else
        completion = false
    end
end

puts "You have visited the following states:"
puts visited.join(', ')