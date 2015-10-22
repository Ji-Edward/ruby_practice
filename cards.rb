value = ['A','K','Q','J','10','9','8','7','6','5','4','3','2','1']
type = ['spades','hearts','clover','clubs']

class Players
         
    def initialize(players)
        @players = players
    end
    
    def players
        @players
    end
    
    def dec
        @players -= 1
    end
    
end

puts "How many players do we have?"
num_players = gets.chomp.to_i
    if num_players > 0
        num = Players.new(num_players)
        until num.players == 0
            num.dec
            puts "Player #{num.players+ 1}: #{value.shuffle[num_players]} of #{type.shuffle[num_players]} and #{value.shuffle[num_players-1]} of #{type.shuffle[num_players-1]}"
            if num.players == 0
                puts "Okay let's begin!"
            end
        end
    end