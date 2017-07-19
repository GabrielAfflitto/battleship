require 'pry'
require './lib/board'
class Battleship

  def initialize
    options
    ship_layout
  end

  def options
    puts "Welcome to Battleship"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    output = gets.chomp
    if output == "p"
      start_game
    elsif output  == "i"
      puts "These are the rules: "
    else output == "q"
      exit
    end
  end

  def start_game
    ship_layout 
  end


end
bs = Battleship.new
bs.options
