Rails.application.routes.draw do
  root to: "beersapi#index"
  get '/beers' => "beersapi#show"
end
