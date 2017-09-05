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

    assert_equal [], comp.long
  end

  def test_it_has_a_short_ship
    comp = Computer.new

    assert_equal [], comp.short
  end

  def test_for_random_space_first
    comp = Computer.new

    assert first_space.include?(comp.first_position)
  end

  def test_for_array_with_two_coordinates
    comp = Computer.new
    coord = comp.two_space_ship

    assert third_coordinate.has_key?(coord)
  end

  def test_that_new_arrays_contain_coordinates
    comp = Computer.new
    comp.create_ships

    refute comp.long.empty?
    refute comp.short.empty?
  end

  def test_that_the_two_arrays_can_be_compared
    comp = Computer.new
    comp.create_ships

    assert_equal [true, true, true], comp.ship_comparison
  end

  

end
