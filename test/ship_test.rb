require './lib/ship'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ShipTest < Minitest::Test
  def test_it_exists
    ship = Ship.new("One")

    assert_instance_of Ship, ship
  end


end
