class Testing
    

    def initialize(email,password)
        @email = email
        @password = password
    end
    
    def login
        
    @questions_answers = {'Is the sky blue?'=> 'Y', 'Do dogs bark?'=>'Y', 'Do cats meow?'=>'Y','Is exercise good for your body?' => 'Y'}
    @score = 0
    
        puts "Please enter your email:"
        stu_email = gets.chomp.to_s.downcase
        if stu_email == @email
            
            puts "Please enter your password:"
            stu_pass = gets.chomp.downcase
            if stu_pass == @password
            puts "Access Granted!"
            puts "Please answer the following questions."
            
            @questions_answers.each do |question, correct_answer|
            puts "Q:#{question}"
        
            user_answer = gets.chomp.upcase
            if user_answer == 'Y' || user_answer == 'N'
                if user_answer == correct_answer
                @score += 1
                end
            else
                puts "Try again: Y or N?"
                redo
            end
        end
            per = (@score.to_f/@questions_answers.count.to_f)*100
        
                if per < 60
                
                    puts "You got #{per} %. Please retake the test."
                    login
                else
                    puts "You got #{per} %."
                end
            
            else
                puts "Acess Denied"
            end
        else
            puts"Access Denied"
        end
    end
end
  
my_account = Testing.new('eji@ncsu.edu','pass')
puts my_account.login