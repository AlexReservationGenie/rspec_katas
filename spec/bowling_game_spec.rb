require_relative '../lib/bowling_game'

describe BowlingGame do
  let(:game) { BowlingGame.new }
  it "scores a gutter game" do
    game.rolls([0] * 20)
    expect(game.score).to eq(0)
  end
end
