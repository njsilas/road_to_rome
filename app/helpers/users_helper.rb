module UsersHelper
  def totlodgenum
    humanized_money_with_symbol(current_user.destinations.totlodge) 
  end
  def totflightnum
    humanized_money_with_symbol(current_user.flights.totflight) 
  end
end
