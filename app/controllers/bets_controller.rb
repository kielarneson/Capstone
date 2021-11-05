class BetsController < ApplicationController
  require "net/http"
  require "json"
  require "uri"

  def show
    uri = URI.parse("https://api.collegefootballdata.com/lines?year=2021&seasonType=regular&home=#{params[:home]}&away=#{params[:away]}")
    request = Net::HTTP::Get.new(uri)
    request["Accept"] = "application/json"
    request["Authorization"] = "Bearer #{Rails.application.credentials.cfbd_api_key}"

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    bet = JSON.parse(response.body)

    # Displaying all available bettings lines to the frontend
    render json: bet

    # Displaying one book's lines to the frontend
    # render json: bet[0]["lines"][0]
  end
end
