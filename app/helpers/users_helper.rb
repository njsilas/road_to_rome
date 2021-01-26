module UsersHelper
  def totlodgenum
    humanized_money_with_symbol(current_user.destinations.totlodge * 0.01) 
  end
  def totflightnum
    humanized_money_with_symbol(current_user.flights.totflight * 0.01) 
  end
end
