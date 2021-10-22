class GamesController < ApplicationController
  def index
    response = HTTP.get("https://api.seatgeek.com/2/events?q=#{params[:category]}&client_id=MzA3NTE0OHwxNjMxOTEyOTc1LjMzNDA4NA&client_secret=#{Rails.application.credentials.seat_geek_api_key}")
    games = JSON.parse(response.body)

    render json: games
  end

  def create
    response = HTTP.get("https://api.seatgeek.com/2/events?q=#{params[:category]}&client_id=MzA3NTE0OHwxNjMxOTEyOTc1LjMzNDA4NA&client_secret=#{Rails.application.credentials.seat_geek_api_key}")
    games = JSON.parse(response.body)

    game_data = games["events"][0]

    game = Game.new(
      api_id: "#{game_data["id"]}",
      name: "#{game_data["title"]}",
      away_team: "#{game_data["performers"][1]["short_name"]}",
      away_team_conference: "#{game_data["performers"][1]["divisions"][1]["short_name"]}",
      home_team: "#{game_data["performers"][0]["short_name"]}",
      home_team_conference: "#{game_data["performers"][0]["divisions"][1]["short_name"]}",
      stadium: "#{game_data["venue"]["name"]}",
      address: "#{game_data["venue"]["address"]}, #{game_data["venue"]["extended_address"]}",
      start_time: "#{game_data["datetime_local"]}",
    )
    if game.save
      render json: { message: "Game successfully saved", game: game }, status: :created
    else
      render json: { errors: game.errors.full_messages }, status: :bad_request
    end
  end
end
