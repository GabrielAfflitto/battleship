require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test

 def test_it_asks_for_a_name
  player = Player.new(name)


  assert_equal name, name
 end

 def test_victorious_is_false_by_default
   player = Player.new

   asert_equal false, actual
 end


end
