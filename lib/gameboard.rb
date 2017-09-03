require 'pry'
class GameBoard
  attr_reader :grid

  def initialize
    @grid ={"A1" => true, "A2" => true, "A3" => true, "A4" => true,
            "B1" => true, "B2" => true, "B3" => true, "B4" => true,
            "C1" => true, "C2" => true, "C3" => true, "C4" => true,
            "D1" => true, "D2" => true, "D3" => true, "D4" => true}
  end

end
