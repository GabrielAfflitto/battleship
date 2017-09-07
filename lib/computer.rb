require './lib/gameboard'
require './lib/ship_coordinates'
require 'pry'
class Computer
  include ShipCoordinates
  attr_accessor :gameboard, :long_ship, :short_ship

  def initialize
    @gameboard = GameBoard.new
    @long_ship = []
    @short_ship = []
  end

  def ship_one
    coord_1 = first_space.sample
    @short_ship << coord_1
    coord_2 = second_coordinate[coord_1].sample
    @short_ship << coord_2

  end

  def ship_two
    coord_1 = first_space.sample
    @long_ship << coord_1
    coord_2 = second_coordinate[coord_1].sample
    @long_ship << coord_2
    coord_3 = third_coordinate[long_ship].sample
    @long_ship << coord_3
  end

  def create_ships
    @long_ship << ship_two
    @short_ship << ship_one
    @long_ship.pop
    @short_ship.pop

  end

  def ship_comparison
    @long_ship.zip(@short_ship).collect do |x, y|
      x != y
    end
  end

  def ships_cannot_overlap
    until ship_comparison == [true, true, true]
      ship_two
    end
  end

  def place_ships
    @short_ship.each do |coord|
      @gameboard.grid[coord] = "x"
      binding.pry
    end
  end

end
