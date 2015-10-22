puts "What time is it?"
time = gets.chomp

t = Time.now
puts t 
case
when t.hour < 12
    puts "Good morning!"
when t.hour > 12
    puts "Good afternoon!"
when t.hour == 12
    puts "Let's grab lunch!"
end

