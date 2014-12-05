class Round < ActiveRecord::Base
belongs_to :drinker
      
  def initialize(drinker)


    @fl_oz = fl_oz['params']
    @hours = hours['params']
    Round.update({ fl_oz: @fl_oz, hours: @hours })

  end

  def calculate(abv, lbs, sex, hours)

    r = sex == "male" ? 0.73 : 0.66
    bac = ((abv * 5.14) / (lbs * r)) - (0.015 * hours)

  end


end
    step_1 = (fl_oz * abv) # Multiply Ounces by Alcohol Volume
    step_2 = (step_1 * 100 * 1.055) # Multiply by Blood Gravity
    step_3 = (lbs * sex) # Multiply by Weigh and Sex
    step_4 = (step_2 / step_3) # Divide Blood by Person Stats
    step_5 = (hours * 0.015)  # Multiply Hours by Elimination Constant
    step_6 = (step_4 - step_5) # Subtract by Hours and Elimination Constant
    step_7 = (step_6 / 100)


    step_1 = (fl_oz * 5.14)
    step_2 = (lbs * sex)
    step_3 = (step_1 / step_2)
    step_4 = (0.015 * hours)
    step_5 = (step_3 - step_4)
    step_6 = (step_5 / 100)


    0.045
    0.050
           * 100 * 1.055 / lbs * sex) - (0.015 * hours)

    bac = (12 * 0.06 * 100 * 1.055 / 140 * 0.68) - (0.015 * hours)

     (fl_oz * 5.14/lbs * 0.73) - 0.15 * hours
     (fl_oz * 5.14/lbs * 0.66) - 0.15 * hours

    # fl_oz         - total liquid ounces consumed * 5.14 (ounces of the total consumed that are just alchol)
    # 5.14          - a conversion factor of .823 * 100/16, wherein .823 is used to convert fl_oz to ounces of lbs, 100 is used to convert the final to percentage and 16 is used to convert lbs to ounces 
    # 0.73 and 0.66 - alcohol distribution ratios
    # .015          - is the average alcohol elimination rate.
