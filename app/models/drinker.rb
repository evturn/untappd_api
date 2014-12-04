class Drinker < ActiveRecord::Base
  has_many :rounds

  def initialize

    @sex = sex
    @lbs = lbs

  end 


end
