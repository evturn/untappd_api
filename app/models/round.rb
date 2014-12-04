class Round < ActiveRecord::Base
belongs_to :drinker
      
  def initialize(drinker)

    @fl_oz = fl_oz
    @hours = hours

  end

  def calculate

    m(fl_oz * 5.14/lbs * 0.73) - 0.15 * hours
    f(fl_oz * 5.14/lbs * 0.66) - 0.15 * hours
    
    # fl_oz         - total liquid ounces consumed * 5.14 (ounces of the total consumed that are just alchol)
    # 5.14          - a conversion factor of .823 * 100/16, wherein .823 is used to convert fl_oz to ounces of lbs, 100 is used to convert the final to percentage and 16 is used to convert lbs to ounces 
    # 0.73 and 0.66 - alcohol distribution ratios
    # .015          - is the average alcohol elimination rate.
  end


end
