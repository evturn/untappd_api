class BACController < ApplicationController

  
  def index

    
    

  end

  def new

    @drinker = Drinker.create(params)
    @round = Round.new(params)
    @round.calculate
    @round.update
    @round.save

  end


end