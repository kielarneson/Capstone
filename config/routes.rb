Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/tailgates" => "tailgates#index"
  post "/tailgates" => "tailgates#create"
  get "/tailgates/:id" => "tailgates#show"

  get "/games/:category" => "games#index"
  post "/games/:category" => "games#create"
end
