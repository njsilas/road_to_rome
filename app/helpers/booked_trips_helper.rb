module BookedTripsHelper
    def goals
        total 
          if total.negative?
              "You are #{humanized_money_with_symbol(total * -1)} away from your goal!"
          else
              "Awesome, you've got #{humanized_money_with_symbol(total)} to play with!"
          end
        end
  def dest_price
    @booked_trip.flight.destination.lodging_price
  end
  def fly_price
    @booked_trip.flight.ticket_price
  end
  def fl_to
    @booked_trip.flight.arrival.strftime("Your flight departs on %A, %B %e, %Y")
  end
  def fl_from
    @booked_trip.flight.departure.strftime("You will return home on %A, %B %e, %Y")
  end
  def fl_to_main
    "#{self.flight.arrival.strftime("%b %d")}-#{self.flight.departure.strftime("%b %d")}"
  end
  def fl 
      fight.arrival.strftime("%b %-d")
  end
  def total
    total = @booked_trip.savings - (dest_price + fly_price)
  end 
end
