require './lib/battleship'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BattleshipTest < Minitest::Test
  def test_it_exists
    bs = Battleship.new

    assert_instance_of Battleship, bs
  end

  def test_for_welcome_message
    skip
    bs = Battleship.new

    assert_equal "Welcome to BATTLESHIP", bs.start
  end

  def test_for_the_battleship_menu
    skip
    bs = Battleship.new
    expected = "Would you like to (p)lay, read the (i)nstructions or (q)uit?"
    assert_equal expected, bs.menu
  end

  

end
