require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'
require './lib/ship_coordinates'
require './lib/gameboard'

class ComputerTest < Minitest::Test
  include ShipCoordinates
  def test_it_exists
    comp = Computer.new

    assert_instance_of Computer, comp
  end

  def test_it_has_a_board
    comp = Computer.new

    assert_instance_of GameBoard, comp.gameboard
  end

  def test_it_has_a_long_ship
    comp = Computer.new

    assert_equal [], comp.long_ship
  end

  def test_it_has_a_short_ship
    comp = Computer.new

    assert_equal [], comp.short_ship
  end

  def test_that_ship_one_array_contains_coordinates
    comp = Computer.new

    assert_equal 2, comp.ship_one.length
  end

  def test_for_array_with_two_coordinates
    comp = Computer.new

    assert_equal 3, comp.ship_two.length
  end

  def test_that_new_arrays_contain_coordinates
    comp = Computer.new
    comp.create_short_ship
    comp.create_long_ship

    refute comp.long_ship.empty?
    refute comp.short_ship.empty?
  end

  def test_that_the_two_arrays_can_be_compared
    comp = Computer.new
    comp.create_short_ship
    comp.create_long_ship

    assert_equal [true, true, true], comp.ship_comparison
  end
end
