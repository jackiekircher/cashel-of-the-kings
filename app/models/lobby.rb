require 'securerandom'

class Lobby

  def initialize(player, options={})
    @owner   = player
    @players = [player]
    @key     = options[:key] || SecureRandom.uuid
  end

  def key
    @key
  end

  def to_param
    key
  end

  def players
    @players
  end

  def add_player(player)
    @players << player
  end

  def remove_player(player)
    @players.delete(player)
  end

end
