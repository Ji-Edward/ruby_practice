class Movie
    def initialize(name,year,director,rating)
    puts "Name:"
        @name = gets.chomp.capitalize

    puts "Year:"
        @year = gets.chomp.to_i

    puts "Director:"
        @director = gets.chomp.capitalize

    puts "Rating:"
        @rating = gets.chomp.to_f
    end
    
    def name
        @name
    end
    
    def year
        @year
    end
    
    def director
        @director
    end
    
    def rating
        @rating
    end
    
end


puts new_movie.name
puts new_movie.year
puts new_movie.director
puts new_movie.rating