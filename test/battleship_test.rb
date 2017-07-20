require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'



class BattleshipTest < Minitest::Test

  def test_it_exists
    ship = Battleship.new

    assert_instance_of Battleship, ship
  end

  def test_it_puts_message
    ship = Battleship.new

    assert_equal "Welcome to Battleship", options
  end

  def test_it_places_ship
    ship = Ship.new(place_ship)

    assert_equal true, place_ship.grid
  end

end
