class GameSessionsController < ApplicationController
  def index
    @gamesessions = GameSession.all
  end

  def show
    # find_gamesession
  end

  # def new
  #   @game = Game.find(params[:game_id])
  #   @user = User.find(params[:user_id])
  #   @gamesession = Gamesession.new
  # end

  def create
  end


  def edit
    # find_gamesession
  end

  def update
  end

  def destroy
  end

  private

  def gamesession_params
    params.require(:gamesession).permit(:start_time, :end_time, :min_players, :max_player, :description)
  end

  def find_gamesession
    @gamesession = Gamesession.find(params[:id])
  end

end
