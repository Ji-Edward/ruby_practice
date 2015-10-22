login = {'ed' => 'password1', 'walid'=> 'password2', 'erin' => 'password2'}
puts "Username:"
username = gets.chomp.downcase
current_user = false
login.each do |k,v|
    if username == k
        current_user = true
        puts "Password:"
        password = gets.chomp.downcase
        if password == v
        puts "SUCCESS!"
        else
        puts "ACCESS DENIED!"
        end
    end
end

if current_user == false
    puts "ACCESS DENIED"
end