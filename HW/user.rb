class User
    def initialize(username,password)
        @username = username
        @password = password
    end
    
    def username
        @username
    end
    
    def password
        @password
    end
        
end
logins=[]
completion = ""

puts "Enter login. Type 'done' when finished."
while completion != "done"
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    new_account = User.new(username,password)
    logins.push(new_account)
    puts "Login saved."
    completion = "done"
end

puts "Complete!"