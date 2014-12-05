class Drinker < ActiveRecord::Base
  has_many :rounds

  def initialize

    @sex = sex
    @lbs = lbs

  end 


end


class Drinker

  def initialize(fl_oz, hours, lbs)

    @fl_oz = fl_oz
    @hours = hours
    @lbs = lbs

  end 


end

# 80 kg male drinking 3 standard drinks in two hours:
#  EBAC = (0.806 \cdot 3 \cdot 1.2)/(0.58 \cdot 80) - (0.015 \cdot 2) = 0.032534483 \approx 0.033 g/dL

brad = Drinker.new( 12, 1, 140 )

bac = (@fl_oz * 5.14/@lbs * 0.73) - 0.15 * @hours
