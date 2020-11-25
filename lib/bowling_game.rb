class BowlingGame

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
      if spare?
        score += calculate_spare
        @first_in_frame += 2
      elsif strike?
        score += calculate_strike
        @first_in_frame += 1
      else
        score += calculate_standard
        @first_in_frame += 2
      end

      frame += 1
    end

    score
  end

  private

  def spare?
    return false if @rolls[@first_in_frame] == 10
    @rolls[@first_in_frame] + @rolls[@first_in_frame + 1] == 10
  end

  def strike?
    @rolls[@first_in_frame] == 10
  end

  def calculate_spare
    10 + @rolls[@first_in_frame + 2]
  end

  def calculate_strike
    10 + @rolls[@first_in_frame + 1] + @rolls[@first_in_frame + 2]
  end

  def calculate_standard
    @rolls[@first_in_frame] + @rolls[@first_in_frame + 1]
  end

end
