class BookedTripsController < ApplicationController
    def show
        if params[:user_id]
        @booked_trips = User.find(params[:user_id]).booked_trips
        else
            @booked_trips = BookedTrip.all
        end
    end
    def show
        byebug
        
        @booked_trip = BookedTrip.find_by_id(params[:id])
    end
    def new
       
        
        @booked_trip = BookedTrip.new(flight_id: params[:flight_id])
        
    end
    def create
      
        @booked_trip = current_user.booked_trips.build(booked_trip_params)
        
        @booked_trip.save
        
        redirect_to booked_trip_path(@booked_trip.id)
    end
   
    def index

    end
    private
    def booked_trip_params
        params.require(:booked_trip).permit(:user_id, :flight_id, :savings, :trip_notes)
    end

end  
