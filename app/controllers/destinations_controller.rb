class DestinationsController < ApplicationController
    def new
       @destination = Destination.new
    end
    def create
        @destination = current_user.vacations.build(destinations_params)
    end
    def show

    end
    private

    def destinations_params
        params.require(:destination).permit(:location, :lodging, :lodging_price, :flight_id, :user_id)
    end
end
