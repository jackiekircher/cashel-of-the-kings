require 'models/player'

describe Player do

  let(:player) { Player.new }

  describe "#hand" do

  end

  describe "#gold" do

    it "the player starts with 2 gold" do
      player.gold.should eq 2
    end
  end

  describe "#add_gold" do

    it "gives gold to the player" do
      more_gold = rand(10) + 1
      player.add_gold(more_gold)

      player.gold.should eq 2 + more_gold
    end
  end

  describe "#remove_gold" do

    it "removes gold from the player" do
      less_gold = rand(2) + 1
      player.remove_gold(less_gold)

      player.gold.should eq 2 - less_gold
    end

    it "cannot remove more gold than the player has" do
      player.remove_gold(10).should eq 0
    end
  end

end
