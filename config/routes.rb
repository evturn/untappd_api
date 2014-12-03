Rails.application.routes.draw do
  root to: "welcome#index"
  get '/beers' => "welcome#show"
end
