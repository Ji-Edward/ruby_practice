puts "What's your fave color?"
color=gets.chomp.downcase
array= ['green','blue']

array.each do |x,y|
    if color==x
        puts "Great Choice!"
    end
end
    if color != array[1]||array[2]
        puts color.capitalize + "? Really, that's your fave color?"
    end
