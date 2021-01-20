class FlightsController < ApplicationController
    def new
        @flight = Flight.new
    end

    def create
        @flight = Flight.create(flight_params)
        redirect_to :controller => 'booked_trips', :action => 'new'
    end
    def show

    end
    private
    def flight_params
        params.require(:flight).permit(:airport_to, :airline_to, :arrival, :airline_from,
            :airport_from, :departure, :ticket_price, :destination_id)
    end
end
