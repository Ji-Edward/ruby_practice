def lb_to_kg(x)
    x /= 2.20
    puts "#{x} kilos"
end

x= gets.chomp.to_i
lb_to_kg(x)
