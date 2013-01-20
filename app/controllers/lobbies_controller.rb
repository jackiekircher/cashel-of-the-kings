class LobbiesController < ActionController::Base

  def new

  end

  def create
    player = Player.new("player 1")
    lobby  = Lobby.new(player)
    redirect_to lobby_path(lobby)
  end

  def show
    player = Player.new("player 1")
    @lobby = Lobby.new(player, :key => params[:id])
  end

end
