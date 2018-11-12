class Api::V1::CardsController < ApplicationController
  skip_before_action :authorized
  def index
    @cards = Card.all
    render json: @cards
  end
end
