require_relative "board.rb"
require_relative "player.rb"

class Game

    def initialize
        @player = Player.new
    end


    def move
        @end = false
        @gameBoard = Board.new
        @turn = 1

        while @turn < 10
            if @turn.odd?
                turn_sequence(@player.player_1,"X")
            elsif @turn.even?
                turn_sequence(@player.player_2,"Y")
            end
        end
    end 

    def turn_sequence(player, symbol)
        @player_move = gets.chomp.to_i
        if (1..9).include?(@player_move)
            @turn += 1
            @gameBoard.board_update(@player_move-1,symbol)
        
        else
            puts "You have put numbers between 1 to 9"
        end


    end
end


game = Game.new
game.move