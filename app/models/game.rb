class Game

  def initialize(players)
    num_players = players.count
    raise ArgumentError if (num_players < 2 || num_players > 7)
  end

end
