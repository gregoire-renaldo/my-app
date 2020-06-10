class GameSessionsController < ApplicationController
before_action :authenticate_user!, except: :show

  def index
    @gamesessions = GameSession.all
  end

  def show
    find_gamesession
  end

  def new
    @gamesession = GameSession.new
    # @game = Game.find(params[:game_id])
    # @user = User.find(params[:user_id])
  end

  def create
    @gamesession = GameSession.new(gamesession_params)
    # @gamesession.photo.attach(io: params[:gamesession][:photo], filename: "photo.jpg", content_type: "image/jpg")
    @gamesession.user = current_user
    if @gamesession.save
      redirect_to game_sessions_path(@gamesession)
    else
      render :new
    end
  end


  def edit
    find_gamesession
  end

  def update
  end

  def destroy
  end

  private

  def gamesession_params
    params.require(:game_session).permit(:name, :start_time, :end_time, :min_players, :max_player, :description, :game_id)
  end

  def find_gamesession
    @gamesession = GameSession.find(params[:id])
  end

end
