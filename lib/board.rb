require 'pry'
require './lib/board'

class Board
  attr_reader :grid

  def initialize
    @grid = {"A1" => false, "A2" => false, "A3" => false, "A4" => false,
      "B1" => false, "B2" => false, "B3" => false, "B4" => false,
      "C1" => false, "C2" => false, "C3" => false, "C4" => false,
      "D1" => false, "D2" => false, "D3" => false, "D4" => false,}
      set_board
  end

  def set_board(x,y)
    create_board[x] = true
    create_board[y] = true
  end


end
