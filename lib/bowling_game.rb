class BowlingGame

  attr_reader :rolls
  attr_reader :first_in_frame

  def initialize
    @first_in_frame = 0
  end

  def rolls(rolls)
    @rolls = rolls
  end

  def score
    frame = 0
    score = 0

    while frame < 10
      if @rolls[@first_in_frame] + @rolls[@first_in_frame + 1] == 10
        score += 10 + @rolls[@first_in_frame + 2]
      else
        score += @rolls[@first_in_frame] + @rolls[@first_in_frame + 1]
      end

      @first_in_frame += 2
      frame += 1
    end

    score
  end

end
