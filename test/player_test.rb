require 'minitest/pride'
require 'minitest/autorun'
require './lib/player'
require './lib/ship_coordinates'
require './lib/gameboard'
require 'pry'

class PlayerTest < Minitest::Test
  include ShipCoordinates
  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  end

  def test_gameboard_class_exists_within_player
    player = Player.new

    assert_instance_of Gameboard, player.gameboard
  end
end
