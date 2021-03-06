class PlayersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @gamesession = GameSession.find(params[:game_session_id])
    @player = Player.new
    # if current_user.role == "designer"
    # @request = Request.new
    # else
    #   redirect_to projects_path
    # end
  end

  def create
    @player = Player.new(player_params)
    @gamesession = GameSession.find(params[:game_session_id])
    @player.game_session = @gamesession
    #pour ne se connecter qu'une seule fois à la session de jeu
    @player.user_id = current_user.id
    if @player.save
      redirect_to game_session_path(@gamesession)
    else
      render 'new'
    end
  end



  def edit
  end

  def update
  end

  def destroy
    @player = Player.find(params[:id])
    @gamesession = @player.game_session
    @player.destroy
    flash[:notice] = "You have successfully quit the gamesession."
    redirect_to game_session_path(@gamesession)
  end

  private

  def player_params
    params.require(:player).permit(:gamesession_id, :user_id)
  end

end
