module UsersHelper
    def trips_display
       if current_user.destinations.exists?
            current_user.destinations.each do |destination|
              destination.flights
              if destination.flights.upcoming.empty?
                "you have no flights comping this month"
              else
              "You've got a trip coming up!"
            end
        
        end
    end
    
    end
end
