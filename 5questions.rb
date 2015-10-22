#Array Approach
questions = [ 'Are narwhals real?', 
              'Is today Halloween?', 
              'Do dogs say meow?', 
              'Does 2+2 = 4?',
              'Is Jaime awesome?']

correct_answers = ['Y', 'N', 'N', 'Y', 'Y']

index = 0
score = 0

puts "Please answer Y or N to the following questions!"

questions.each do |question|
  puts "Q: #{question}"
  user_answer = gets.chomp.upcase

  if user_answer == 'Y' || user_answer == 'N'
    if user_answer == correct_answers[index]
      score += 1
    end
    index += 1
  else
    puts "Try again: Y or N?"
    redo
  end
end

puts "You got #{score}/5 correct answers!"
    

#Hash Approach
questions_answers = {'Are narwhals real?' => 'Y', 
                     'Is today Halloween?' => 'N', 
                     'Do dogs say meow?' => 'N', 
                     'Does 2+2 = 4?' => 'Y', 
                     'Is Jaime awesome?' => 'Y'}
score = 0

puts "Please answer Y or N to the following questions!"

questions_answers.each do |question, correct_answer|
  puts "Q: #{question}"

  user_answer = gets.chomp.upcase

  if user_answer == 'Y' || user_answer == 'N'
    if user_answer == correct_answer
      score += 1
    end
  else
    puts "Try again: Y or N?"
    redo
  end
end

puts "You got #{score}/#{questions_answers.count} correct answers!"

#Method Approach
@questions_answers = {'Are narwhals real?' => 'Y', 
                      'Is today Halloween?' => 'N', 
                      'Do dogs say meow?' => 'N', 
                      'Does 2+2 = 4?' => 'Y', 
                      'Is Jaime awesome?' => 'Y'}
@score = 0

def prompt
  puts "Please answer Y or N to the following questions!"
end

def ask_questions 
  @questions_answers.each do |question, correct_answer|
    puts "Q: #{question}"

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
end

def put_score(s,q_a)
  puts "You got #{s}/#{q_a.count} correct answers!"
end

def main
  prompt
  ask_questions
  put_score(@score,@questions_answers) 
end

main