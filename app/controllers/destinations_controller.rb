class DestinationsController < ApplicationController
    before_action :redirect_if_not_logged_in
    def new
       @destination = Destination.new
    
    end
    def create
        
    
        @destination = current_user.destinations.build(destinations_params)
        
        
      if @destination.save
        redirect_to new_destination_flight_path(@destination.id)
      else
        render :new
      end
    end
   def edit
    @destination = Destination.find(params[:id])
    redirect_to user_path(current_user) unless @destination.user ==  current_user
   end
   
   def update
    
    @destination = Destination.find(params[:id])
    @destination.update(destinations_params)
    redirect_to edit_destination_flight_path(@destination)
   end
    private

    def destinations_params
        params.require(:destination).permit(:location, :lodging, :lodging_price, :user_id)
    end
end
