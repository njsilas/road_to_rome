class DestinationsController < ApplicationController
    
    def new
       @destination = Destination.new
    
    end
    def create
       
    
        @destination = current_user.destinations.build(destinations_params)
        
        
        @destination.save
        
       
        redirect_to new_destination_flight_path(@destination.id)
    end
   
    private

    def destinations_params
        params.require(:destination).permit(:location, :lodging, :lodging_price, :user_id)
    end
end
