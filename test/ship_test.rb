require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new

    assert_instance_of Ship, ship
  end

  def test_start_space_is_nil_by_default
    ship = Ship.new

    assert_nil, start_space
  end

end
