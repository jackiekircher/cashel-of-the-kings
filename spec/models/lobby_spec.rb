require 'models/lobby'
require 'securerandom'

describe Lobby do

  let!(:player) { Object.new }
  let!(:lobby)  { Lobby.new(player) }

  describe "#add_player" do

    it "adds a player to the lobby" do
      player = Object.new

      lobby.add_player(player)
      lobby.players.should include player
    end
  end

  describe "#remove_player" do

    it "removes a player from the lobby" do
      player = Object.new
      lobby.add_player(player)

      lobby.remove_player(player)
      lobby.players.should_not include player
    end
  end

  describe "#key" do

    it "returns a unique random key for the lobby" do
      key = rand(1000)
      SecureRandom.stub(:uuid => key)
      lobby = Lobby.new(player)

      lobby.key.should == key
    end

    it "can be initialized with a given key" do
      key   = rand(1000)
      lobby = Lobby.new(player, :key => key)

      lobby.key.should == key
    end
  end
end
