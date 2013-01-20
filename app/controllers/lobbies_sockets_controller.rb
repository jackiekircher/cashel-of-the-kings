class LobbiesSocketsController < WebsocketRails::BaseController

  def join
    @player = Player.new("player 2")
    trigger_success @player
  end

end
