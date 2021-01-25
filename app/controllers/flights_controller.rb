class FlightsController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def new
        



        @flight = Flight.new(destination_id: params[:destination_id] )
        
    end

    def create
        @flight = Flight.create(flight_params)
            if @flight.save
        redirect_to new_flight_booked_trip_path(@flight.id)
            else
                redirect_to new_destination_flight_path(@flight.destination)
            end
    end
    def edit
        @flight = Flight.find(params[:id])
        redirect_to user_path(current_user) unless @flight.destination.user ==  current_user
    end
    def update
        @flight = Flight.find(params[:id])
        @flight.update(flight_params)
        redirect_to edit_flight_booked_trip_path(@flight.id)
    end
  
    private
    def flight_params
        params.require(:flight).permit(:airport_to, :airline_to, :arrival, :airline_from,
            :airport_from, :departure, :ticket_price, :destination_id)
    end
end
