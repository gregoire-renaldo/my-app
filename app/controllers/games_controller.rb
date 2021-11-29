class GamesController < ApplicationController

def index
  @games = Game.all
end


def new
  @game = Game.new
end

def create
  @game = Game.new(game_params)
  if @game.save
    flash[:success] = "Game successfully created"
    redirect_to games_path
  else
    flash[:error] = "Something went wrong"
    render 'new'
  end
end

private

def game_params
  params.require(:game).permit(:name, :description)
end

end
