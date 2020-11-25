class BowlingGame

  attr_reader :rolls

  def rolls(rolls)
    @rolls = rolls
  end

  def score
    @rolls.inject(:+)
  end

end
