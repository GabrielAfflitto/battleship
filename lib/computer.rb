require './lib/gameboard'
require './lib/ship_coordinates'
class Computer
  include ShipCoordinates
  attr_reader :gameboard, :long, :short

  def initialize
    @gameboard = GameBoard.new
    @long = []
    @short = []
  end

  def first_position
    first_space.sample
  end

  def two_space_ship
    first = first_position
    second = second_coordinate[first].sample
    [first, second]
  end

  def three_space_ship
    small_ship = two_space_ship
    small_ship << third_coordinate[small_ship].sample
  end

  def create_ships
    @long << three_space_ship.flatten
    @short << two_space_ship.flatten
  end

end
