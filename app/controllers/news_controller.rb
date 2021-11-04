class NewsController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:q]}&apiKey=#{Rails.application.credentials.news_api_key}")
    news = JSON.parse(response.body)

    render json: news
  end
end
