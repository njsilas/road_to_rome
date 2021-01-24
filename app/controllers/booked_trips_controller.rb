class BookedTripsController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    
    def index
        @booked_trips = BookedTrip.all
        
    end
    def new
       
        
        @booked_trip = BookedTrip.new(flight_id: params[:flight_id])
        
    end
    def create
        redirect_if_not_logged_in
        @booked_trip = current_user.booked_trips.build(booked_trip_params)
        
        @booked_trip.save

        if @booked_trip.save
        
        redirect_to booked_trip_path(@booked_trip.id)
        else
            
            redirect_to new_flight_booked_trip_path(@booked_trip.flight)
        end
    end
   
    def show
        @booked_trip = BookedTrip.find_by_id(params[:id])
        
    end
    private
    def booked_trip_params
        params.require(:booked_trip).permit(:user_id, :flight_id, :savings, :trip_notes)
    end
  
end  
