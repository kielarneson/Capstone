class RankingsController < ApplicationController
  require "net/http"
  require "json"
  require "uri"

  def index
    uri = URI.parse("https://api.collegefootballdata.com/rankings?year=2021&seasonType=regular")
    request = Net::HTTP::Get.new(uri)
    request["Accept"] = "application/json"
    request["Authorization"] = "Bearer #{Rails.application.credentials.cfbd_api_key}"

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    rankings = JSON.parse(response.body)

    render json: rankings
  end
end
