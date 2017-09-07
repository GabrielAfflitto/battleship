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

  def computer_place_ships
    create_short_ship
    create_long_ship
    place_short_ship
    place_long_ship
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

  def create_short_ship
    @short_ship << ship_one
    @short_ship.pop
  end

  def create_long_ship
    @long_ship << ship_two
    @long_ship.pop
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

  def place_short_ship
    create_short_ship.map do |coord|
      @gameboard.grid[coord] = "x"
    end
  end

  def place_long_ship
    create_long_ship.map do |coord|
      @gameboard.grid[coord] = "x"
    end
  end

end
