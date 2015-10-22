puts "What time is it?"
t = gets.chomp.to_s
require 'time'
case
when Time.parse(t) < Time.parse("12:00")
    puts "Good morning"
when Time.parse(t) == Time.parse("12:00")
    puts "It's noon, wanna get lunch?"
when Time.parse(t) > Time.parse("12:00")
    puts "Good afternoon"
end