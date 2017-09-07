require './lib/gameboard'
require './lib/ship_coordinates'
require 'pry'

class Player
  include ShipCoordinates
  attr_reader :gameboard

  def initialize
    @gameboard = Gameboard.new
  end
end
