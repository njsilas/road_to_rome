class BookedTripsController < ApplicationController
    def new
        @booked_trip = BookedTrip.new
    end
    def create
        @booked_trip = BookedTrip.create(booked_trips_params)
    end
    def show

    end
    def index

    end
    private
    def booked_trips_params
        params.require(:booked_trip).permit(:user_id, :flight_id, :destination_id, :budget, :trip_notes)
    end
end  
