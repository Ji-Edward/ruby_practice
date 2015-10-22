questions = ["Is today Tuesday?", "Is today sunny?", "Do cats meow?", "Do dogs meow?"]
answer = ["N", "Y","Y","N"]

index = 0
correct = 0

questions.each do |questions|
    puts "Q: #{questions}"
    user_answer = gets.chomp.upcase
    
    if user_answer == "Y" || user_answer == "N"
        if user_answer == answer [index]
            correct +=1
        end
        index +=1
    else
        puts"Y or N?"
        redo
    end
end

puts "You got #{correct}/4 correct!"