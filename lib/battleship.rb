require './lib/gameboard'
require './lib/computer'

class Battleship
  attr_reader :gameboard
  def initialize
    @gameboard = GameBoard.new
  end
  def start
    puts "Welcome to BATTLESHIP"
    menu
  end

  def game_start
    computer_place_ships
  end

  def menu
    puts "Would you like to (p)lay, read the (i)nstructions or (q)uit?"
    user_input = gets.chomp
    if user_input == "p" || user_input == "play"
      game_start
    elsif user_input == "i" || user_input == "instructions"
      puts "I will put two ships on a 4 x 4 grid,are two and three units
            long. After you put your ships on on your board we will take
            turns shooting at spaces on the board until one player has no ships left. das it."
    else user_input == "q" || user_input == "quit"
      puts "You quit the game"
    end
  end



end
