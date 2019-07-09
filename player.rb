class Player
  attr_accessor :lives, :score
  
  def initialize()
    @lives = 3
    @score = 0
  end

  def take_damage()
    @lives -= 1
  end

  def add_score()
    @score += 1
  end

  def dead?
    @lives <= 0
  end
  
end