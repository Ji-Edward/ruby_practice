class Account

  def initialize(name, balance, pin)
  @name = name
  @balance = balance
  @pin = pin
  end

  def action

  puts "Hello #{@name}, welcome to the ruby atm! \nTo view your balance type balance, to withdraw type withdraw, to deposit type deposit, and to exit type exit."

  response = gets.chomp.downcase

  case response

  when "balance"
    puts "Please enter your pin?"
    pin_number = gets.chomp.to_i

      if pin_number == @pin
        puts "Your balance is $#{@balance}."

      else
        puts pin_error
        action
      end

    when "withdraw"
      puts "Please enter your pin?"
      pin_number = gets.chomp.to_i

      if pin_number == @pin
        puts "How much would you like to withdraw?"
        amount = gets.chomp.to_f
        @balance -= amount
        puts "You withdrew #{amount}. Your new balance: $#{@balance}."

      else
        puts pin_error
      end

    when "deposit"
      puts "Please enter your pin?"
      pin_number = gets.chomp.to_i
      puts "How much would you like to deposit?"

      if pin_number == @pin
        amount = gets.chomp.to_f
        @balance += amount
        puts "You deposited #{amount}. Your new balance: $#{@balance}."

      else
        puts pin_error
      end

    when "exit"
      puts "Thank you for visiting us, come again!"

    else
    puts "Sorry I didn't pick up on that."
    action
    end
  end

  def pin_error
  "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Walid", 1000000, 1234)
my_account.action
