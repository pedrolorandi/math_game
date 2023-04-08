class Player
  attr_reader :lives

  def initialize
    @lives = 3
  end

  def decrement
    @lives -= 1
  end
end