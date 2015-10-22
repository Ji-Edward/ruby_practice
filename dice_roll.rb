    def roll1
        puts "Type \"roll\" to roll your first die"
        go = gets.chomp.downcase
        if go == "roll"
            
            num1 = 1+rand(6)
            puts "You rolled a #{num1}"
        end
    end
    
    def roll2
        puts "Type \"roll\" to roll your second die"
        go = gets.chomp.downcase
        if go == "roll"
            num2 = 1+rand(6)
            puts "You rolled a #{num2}"
        end
    end
    
    def total
        tot = num1 + num2
        puts "Your total is #{tot}."
    end
    
    roll1
    roll2
    total