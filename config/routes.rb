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
end
