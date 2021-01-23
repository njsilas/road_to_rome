module BookedTripsHelper
    def goals
        total = self.savings - (dest_price + fly_price)
          if total.negative?
              "You are #{humanized_money_with_symbol(total)} away from your goal!"
          else
              "Awesome, you've got #{humanized_money_with_symbol(total)} to play with!"
          end
        end
        def dest_price
          self.flight.destination.lodging_price
        end
        def fly_price
          self.flight.ticket_price
        end
  
end
