class GamesessionsController < ApplicationController
  def index
    @gamesessions = Gamesession.all
  end

  def show
    @gamesession = Gamesession.find(params[:id])
  end

  def new
    @gamesession = gamesession.new
  end

  def create
    @gamesession = Gamesession.new(gamesession_params)
    @gamesession.save
    redirect_to gamesession_path(@gamesession)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def gamesession_params
    params.require(:gamesession).permit(:user, :place, :startTime, :endTime, :gameorganizer)
  end


end
