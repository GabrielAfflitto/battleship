require 'pry'
require './lib/board'
require './lib/ship'
require './lib/player'
class Battleship
  attr_reader :place_ship

  def initialize(place_ship, grid)
    options
    @place_ship = place_ship
    @grid = {"A1" => false, "A2" => false, "A3" => false, "A4" => false,
      "B1" => false, "B2" => false, "B3" => false, "B4" => false,
      "C1" => false, "C2" => false, "C3" => false, "C4" => false,
      "D1" => false, "D2" => false, "D3" => false, "D4" => false,}
  end

  def options
    puts "Welcome to Battleship"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    output = gets.chomp
    if output == "p" || "play"
      place_ship
    elsif output  == "i" || "instructions"
      puts "These are the rules: "
    else output == "q" || "quit"
      exit
    end
  end



  def place_2_space_ship
    start_space = @grid

  end



end
bs = Battleship.new
bs.options
