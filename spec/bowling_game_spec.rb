require_relative '../lib/bowling_game'

describe BowlingGame do

  let(:game) { BowlingGame.new }

  it "scores a gutter game" do
    game.rolls([0] * 20)
    expect(game.score).to eq(0)
  end

  it "scores a spare" do
    game.rolls([4,6,5] + [1]*17)
    expect(game.score).to eq(37)
  end
end
