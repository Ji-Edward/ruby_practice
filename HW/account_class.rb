class Account
    def initialize(name,balance,pin)
        @name = name
        @balance= balance.round(2)
        @pin=pin
    end
    
    def name
        @name
    end
    
    def get_pin
        puts "Please enter your pin to access #{@name}\'s account"
        pin=@pin
        pin = gets.chomp.to_i
    end
    
    def display_balance
        get_pin
        if pin == @pin
            puts "ACCESS GRANTED!"
            puts "Account Balance: #{@balance}"
        else 
            pin_error
        end
    end
    
    def pin_error
            puts "Access denied: incorrect PIN"
        get_pin
    end
    
    def withdraw(x)
        puts "Please enter your pin to access #{@name}\'s account"
        pin = gets.chomp.to_i
        if pin == @pin
            puts "ACCESS GRANTED!"
            @balance -= x.to_f
            puts "New Balance: #{@balance}"
        else 
            pin_error
        end
    end
    
    def deposit(x)
        puts "Please enter your pin to access #{@name}\'s account"
        pin = gets.chomp.to_i
        if pin == @pin
            puts "ACCESS GRANTED!"
            @balance += x.to_f
            puts "New Balance: #{@balance}"
        else 
            pin_error
        end
    end
end

all_accounts = []
completion = ""

puts "Create a new account! Type done when finished."
    while completion != "done"
    print "Account Name: "
    name = gets.chomp
    print "PIN: "
    pin = gets.chomp.to_i
    new_account = Account.new(name,0,pin)
    all_accounts.push(new_account)
    puts "Account saved."
    completion = "done"
    end
    puts "Complete!"

puts "Would you like to make your first deposit?"
    first=gets.chomp.downcase
    
    if first == "yes"
        puts "How much would you like to make your first deposit?"
        dep=gets.chomp.to_f
        puts new_account.deposit(dep)
    elsif first == "no"
        puts "Would you like to make any other transactions?"
        trans=gets.chomp.downcase
        if trans == "yes"
        puts"Would you like to: View Balance, Deposit, or Withdraw?"
        trans2 = gets.chomp.downcase
        if trans2 == "view balance"
            puts new_account.display_balance
        elsif trans2 == "deposit"
            puts new_account.display_balance
        elsif trans2 == "withdraw"
            puts new_account.display_balance
        end
        elsif trans == "no"
        puts "Session complete. Thank you!"
        end
    end
      