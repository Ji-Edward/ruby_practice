def div

puts "give me number"
    x = gets.chomp.to_i
puts "give me another"
    y = gets.chomp.to_i
        
    if x==0 || y==0
        puts "Cannot divide by 0"
        div
    elsif x != Integer || y != Integer
        puts "Please type a number"
        div
    else
    
        puts x.to_f/y.to_f
    end
end
div