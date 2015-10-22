array = ["dog","cat","snake","pig","horse"]
sound=['woof','meow','sss','oink','neigh']
puts "What is your fave animal out of the follow?:"
fav = gets.chomp.downcase

array.each do |x|
    if fav == x
        if x=="dog"
            puts "They go woof!"
        elsif x=="cat"
            puts "they go meow"
        elsif x=="pig"
            puts "they go oink"
        end
    end
end
