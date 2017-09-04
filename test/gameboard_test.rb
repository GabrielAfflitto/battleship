require 'minitest/autorun'
require 'minitest/pride'
require './lib/gameboard'
require 'pry'

class GameBoardTest < Minitest::Test
  def test_it_exists
    board = GameBoard.new

    assert_instance_of GameBoard, board
  end

  def test_for_hash_containing_ship_coordinates
    board = GameBoard.new
    expected = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]

    assert_equal expected, board.grid.keys
  end

  def test_for_hash_containing_keys_as_true
    board = GameBoard.new
    expected = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]

    assert_equal expected, board.grid.values
  end
end
