class WelcomeController < ApplicationController

  def index
    query = params['query'].gsub(' ', '+')
    url = "http://api.untappd.com/v4/search/beer?client_id=16E1853C36CF3E162699B468424A48C4279030EA&client_secret=B4BC7FB7D8CD6BDA886E92939B388004A3ACC89D&q=#{query}"
    response = HTTParty.get(url)
    beer = response['response']['beers']['items'].first['beer']
    percent = beer['beer_abv']
    beer = beer_name['beer_name']
  end

end