class HistoricalMatchupRecordsController < ApplicationController
  require "net/http"
  require "json"
  require "uri"

  def index
    uri = URI.parse("https://api.collegefootballdata.com/teams/matchup?team1=#{params[:team1]}&team2=#{params[:team2]}&minYear=1980&maxYear=2020")
    request = Net::HTTP::Get.new(uri)
    request["Accept"] = "application/json"
    request["Authorization"] = "Bearer #{Rails.application.credentials.cfbd_api_key}"

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    historical_matchup_record = JSON.parse(response.body)

    render json: historical_matchup_record
  end
end
