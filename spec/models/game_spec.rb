require 'models/game'

describe Game do

  it "cannot have less than two players" do
    lambda do
      players = [Object.new]
      Game.new(players)
    end.should raise_error ArgumentError
  end

  it "cannot have more than seven players" do
    lambda do
      players = [Object.new]*8
      Game.new(players)
    end.should raise_error ArgumentError
  end
end
