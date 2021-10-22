class GamesController < ApplicationController
  require "net/http"
  require "json"
  require "uri"

  def index
    if game.save
      render json: { message: "Game successfully saved", game: game }, status: :created
    else
      render json: { errors: game.errors.full_messages }, status: :bad_request
    end
  end
end
