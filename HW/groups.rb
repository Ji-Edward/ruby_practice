students=[].to_a
puts "Enter name of students. Type done when finished."

completion = true

    while completion
    name = gets.chomp.capitalize
        if name != "Done"
        students.push(name)
        
        else completion = false
        end
    end
        
        # Shuffle array
        students.shuffle!
        #set a count
        stu_count = 0
        
        num_students = students.length
        #until count is the number of students
        until stu_count == num_students
        
        #odd students
        if num_students == 1
            puts "#{students[0]} is a team of 1"
            break
        else
        if num_students % 2 == 1
            if stu_count< num_students - 3
                #output pairs of students
                puts "#{students[stu_count]} & #{students[stu_count+1]}"
            else 
                puts "#{students[stu_count]}, #{students[stu_count+1]} & #{students[stu_count+2]}"
            break
            end
        else #even #students
            puts "#{students[stu_count]} & #{students[stu_count+1]}"
        end  
        end
            #increase count
        stu_count += 2
        end
