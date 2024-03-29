class GameSessionsController < ApplicationController
before_action :authenticate_user!, except: :index


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


    @gamesession = GameSession.create(gamesession_params)
    # @gamesession.photo.attach(io: params[:gamesession][:photo], filename: "photo.jpg", content_type: "image/jpg")
    @gamesession.user = current_user
    @gamesession.valid?
puts @gamesession.errors.full_messages
    @gamesession.save
    if @gamesession.save
      owner_player = Player.new(game_session_id: @gamesession.id, user_id: current_user.id)
      owner_player.save
      redirect_to game_sessions_path(@gamesession)
    else
      render :new
    end
  end


  def edit
    find_gamesession
  end

  def update
    find_gamesession
    if @gamesession.user_id == current_user.id
      @gamesession.update(gamesession_params)
      redirect_to game_sessions_path
    else
      render :edit
    end
  end

  def destroy
    find_gamesession
    if @gamesession.user_id == current_user.id
      @gamesession.destroy
      redirect_to game_sessions_path
    else
      render :edit
    end
    # no need for app/views/restaurants/destroy.html.erb

  end

  private
  def find_gamesession
    @gamesession = GameSession.find(params[:id])
  end

  def gamesession_params
    params.require(:game_session).permit(:name, :start_time, :end_time, :min_players, :max_players, :description, :game_id)
  end


end
