class GamesController < ApplicationController
  def index
    response = HTTP.get("https://api.seatgeek.com/2/events?q=#{params[:q]}&client_id=MzA3NTE0OHwxNjMxOTEyOTc1LjMzNDA4NA&client_secret=#{Rails.application.credentials.seat_geek_api_key}")
    games = JSON.parse(response.body)

    tailgates = Tailgate.all

    games["events"].each { |game| game["start_time_conversion"] = game["datetime_local"].to_datetime.strftime("%I:%MPM - %A, %B %e, %Y").slice(1..) }

    # What are we doing with tailgates here?
    games = games["events"].map do |event|
      event["tailgates"] = tailgates.select { |tailgate| event["id"].to_s == tailgate.game.api_id.to_s }
      event
    end

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

  def show
    response = HTTP.get("https://api.seatgeek.com/2/events/#{params[:api_id]}?client_id=MzA3NTE0OHwxNjMxOTEyOTc1LjMzNDA4NA&client_secret=#{Rails.application.credentials.seat_geek_api_key}")
    game = JSON.parse(response.body)

    render json: game.as_json
  end
end
