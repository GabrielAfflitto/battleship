
class Ship
  attr_reader :length,
              :damage,
              :start_space,
              :end_space

  def initialize(length)
    @length = length
    @damage = 0
    @start_space = nil
    @end_space = nil
  end

  

end
