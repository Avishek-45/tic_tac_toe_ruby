class Player
    attr_reader :player_1 , :player_2

    def initialize
        puts "Enter your name"
        @player_1 = gets.chomp
        puts "#{@player_1} is X"
        puts "Enter your name"
        @player_2 = gets.chomp
        puts "#{player_2} is O"
    end

end



