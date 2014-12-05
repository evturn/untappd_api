Rails.application.routes.draw do
  root to: "api#index"
  get '/beers' => "api#show"
  get '/rounds' => "rounds#index"
end
