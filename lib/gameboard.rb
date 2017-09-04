require 'pry'
require './lib/ship'
require './lib/ship_coordinates'

class GameBoard
  include ShipCoordinates
  attr_reader :grid

  def initialize
    @grid ={"A1" => "", "A2" => "", "A3" => "", "A4" => "",
            "B1" => "", "B2" => "", "B3" => "", "B4" => "",
            "C1" => "", "C2" => "", "C3" => "", "C4" => "",
            "D1" => "", "D2" => "", "D3" => "", "D4" => ""}

  end

  def ship_interface
    p "=========================="
    p ". 1 2 3 4"
    p "A #{@grid["A1"]}#{@grid["A2"]}#{@grid["A3"]}#{@grid["A4"]}"
    p "B #{@grid["B1"]}#{@grid["B2"]}#{@grid["B3"]}#{@grid["B4"]}"
    p "C #{@grid["C1"]}#{@grid["C2"]}#{@grid["C3"]}#{@grid["C4"]}"
    p "D #{@grid["D1"]}#{@grid["D2"]}#{@grid["D3"]}#{@grid["D4"]}"
    p "=========================="
  end

end
board = GameBoard.new
board.ship_interface
