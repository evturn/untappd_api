class BeersAPIController < ApplicationController

  def index
 
    trend_url = "http://api.untappd.com/v4/beer/trending?client_id=16E1853C36CF3E162699B468424A48C4279030EA&client_secret=B4BC7FB7D8CD6BDA886E92939B388004A3ACC89D"
    
    trending    = HTTParty.get( trend_url )
    
    featured    = trending['response']["micro"]["items"].sample

    @f_beer     = featured['beer']['beer_name']
    @f_label    = featured['beer']['beer_label']
    @f_abv      = featured['beer']['beer_abv']
    @f_brewery  = featured['brewery']['brewery_name']
    city        = featured['brewery']['location']['brewery_city']
    state       = featured['brewery']['location']['brewery_state']
    country     = featured['brewery']['country_name']
    @f_location = "#{city}, #{state} #{country}"

    @top_beers  = trending['response']["micro"]["items"].map { |beer| beer['beer'] }
    
    

   

  end

  def show

    query = params['query'].gsub(' ', '+')
    url = "http://api.untappd.com/v4/search/beer?client_id=16E1853C36CF3E162699B468424A48C4279030EA&client_secret=B4BC7FB7D8CD6BDA886E92939B388004A3ACC89D&q=#{query}"

    response     = HTTParty.get( url )
    
    beer         = response['response']['beers']['items'].first['beer']
    @abv         = beer['beer_abv']
    @name        = beer['beer_name']
    @label       = beer['beer_label']
    @description = beer['beer_description']



  end

end