class User

  def initialize(email, password)
    @email = email
    @password = password
  end

  def sign_up
    puts "What is your email?"
      email = gets.chomp.downcase
      @email = email
    puts "What is your password?"
      password = gets.chomp.downcase
      @password = password
  end

  def login
  puts "Please enter your email."
  response = gets.chomp.downcase
  if response == @email.downcase
    puts "Welcome back #{@email}, please enter your password to proceed."
      pw = gets.chomp.downcase
    if pw == @password.downcase
      puts "#{@email}, has been authenticated."
    else puts "Sorry wrong password."
      login
    end
  else puts "Hmmm... looks like you haven't registered yet."
    sign_up
  end

  end
def main
  login
  puts @email, @password
end

end

stu = User.new("myemail", "password")

stu.main