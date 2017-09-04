require './lib/gameboard'

class Battleship

  def start
    puts "Welcome to BATTLESHIP"
    menu
  end

  def menu
    puts "Would you like to (p)lay, read the (i)nstructions or (q)uit?"
    user_input = gets.chomp
    if user_input == "p" || user_input == "play"
      game_start
    elsif user_input == "i" || user_input == "instructions"
      puts "DAMN."
    else user_input == "q" || user_input == "quit"
      puts "You quit the game"
    end
  end

  

end
# bs = Battleship.new
# bs.start
