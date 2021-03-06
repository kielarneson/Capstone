Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  post "/sessions" => "sessions#create"

  get "/tailgates" => "tailgates#index"
  post "/tailgates" => "tailgates#create"
  get "/tailgates/:id" => "tailgates#show"
  patch "/tailgates/:id" => "tailgates#update"
  delete "/tailgates/:id" => "tailgates#destroy"

  get "/games" => "games#index"
  post "/games" => "games#create"
  get "/games/:api_id" => "games#show"

  get "/tailgate_users" => "tailgate_users#index"
  post "/tailgate_users" => "tailgate_users#create"

  get "/lodgings" => "lodgings#index"
  post "/lodgings" => "lodgings#create"
  patch "/lodgings/:id" => "lodgings#update"

  get "/parkings" => "parkings#index"
  post "/parkings" => "parkings#create"
  patch "/parkings/:id" => "parkings#update"

  get "/records" => "records#index"

  get "/historical_matchup_records" => "historical_matchup_records#index"

  get "/rankings" => "rankings#index"

  get "/news" => "news#index"

  get "/bets" => "bets#show"
end
