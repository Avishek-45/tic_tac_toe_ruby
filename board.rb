class Board
  attr_reader :board

  def initialize
    puts "Please enter number according to a given example to play game"
    puts " 1 | 2 | 3 "
    puts "-----------"
    puts " 4 | 5 | 6 "
    puts "-----------"
    puts " 7 | 8 | 9 "

    @board = ["","","","","","","","",""]
  end

  def board_update(position , symbol)
      @board[position] = symbol
      game_board_display(@board)
  end
  
  #this method displays updated board in game
  def game_board_display(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

  end

end 

