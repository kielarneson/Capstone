class GamesController < ApplicationController
  require "net/http"
  require "json"
  require "uri"

  def index
    uri = URI.parse("https://api.collegefootballdata.com/games?year=2018&week=9&seasonType=regular")
    request = Net::HTTP::Get.new(uri)
    request["Accept"] = "application/json"
    request["Authorization"] = "Bearer 5ln/cNSd7OW/bNvLui5+WIC0ljQ4gb/1irOPdeodJQUbo02+zv/mlp/rYLTbwBka"

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    games = JSON.parse(response.body)

    # Upcoming games ordered by closest start time to Time.now
    render json: games
  end

  def create
    game = Game.find_by(api_id: params[:api_id])
    if !game
      game = Game.new(
        api_id: params[:api_id],
        name: params[:name],
        away_team: params[:away_team],
        away_team_conference: params[:away_team_conference],
        home_team: params[:home_team],
        home_team_conference: params[:home_team_conference],
        stadium: params[:stadium],
        address: params[:address],
        start_time: params[:start_time],
      )
    end

    # response = HTTP.get("https://api.seatgeek.com/2/events?q=#{params[:q]}&client_id=MzA3NTE0OHwxNjMxOTEyOTc1LjMzNDA4NA&client_secret=#{Rails.application.credentials.seat_geek_api_key}")
    # games = JSON.parse(response.body)

    # game = Game.find_or_initialize_by(
    #   api_id: params[:api_id],
    #   name: params[:name],
    #   away_team: params[:away_team],
    #   away_team_conference: params[:away_team_conference],
    #   home_team: params[:home_team]
    #   home_team_conference: params[:home_team_conference],
    #   stadium: params[:stadium],
    #   address: params[:addres],
    #   start_time: params[:start_time],
    # )
    if game.save
      render json: { message: "Game successfully saved", game: game }, status: :created
    else
      render json: { errors: game.errors.full_messages }, status: :bad_request
    end
  end
end
