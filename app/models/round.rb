class Round < ActiveRecord::Base
belongs_to :drinker
      
  def initialize(drinker)

    @fl_oz = fl_oz
    @hours = hours

  end


end
