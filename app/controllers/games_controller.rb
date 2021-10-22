class GamesController < ApplicationController
  def index
    response = HTTP.get("https://api.seatgeek.com/2/events?q=#{params[:category]}&client_id=MzA3NTE0OHwxNjMxOTEyOTc1LjMzNDA4NA&client_secret=#{Rails.application.credentials.seat_geek_api_key}")
    games = JSON.parse(response.body)

    render json: games
  end
end
