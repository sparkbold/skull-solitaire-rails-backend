class Api::V1::GamesController < ApplicationController
  skip_before_action :authorized

def create
    @game = Game.create(game_params)
    if @game.valid?
      render json: { game: GameSerializer.new(@game), status_ok:true }, status: :created
    else
      render json: { error: 'failed to create game', status_ok: false }, status: :not_acceptable
    end
  end
 
  private
 
  def game_params
    params.require(:game).permit(:game_score, :game_time, :user_id)
  end
end
