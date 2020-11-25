class BowlingGame

  attr_reader :score

  def rolls(rolls)
    @score = rolls.inject(:+)
  end

  def score
    @score
  end

end
