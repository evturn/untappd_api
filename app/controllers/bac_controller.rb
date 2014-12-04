class BACController < ApplicationController

  
  def round

    round = { fl_oz: fl_oz, lbs: lbs, hours: hours }
    
    round[:fl_oz] = fl_oz
    round[:lbs]   = lbs
    round[:hours] = hours 
    
    
  end



end