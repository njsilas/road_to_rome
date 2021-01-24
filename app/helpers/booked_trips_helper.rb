module BookedTripsHelper
    def goals
        total = @booked_trip.savings - (dest_price + fly_price)
          if total.negative?
              "You are #{humanized_money_with_symbol(total)} away from your goal!"
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
  def display_trips
        if params.include?(params[:user_id])
         @booked_trips.mytripz.each do |trip|
            trip.user.name
            trip.flight.airport_to
         end
        end
    end   
end
