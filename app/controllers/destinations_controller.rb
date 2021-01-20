class DestinationsController < ApplicationController
    def new

    end
    def create

    end
    def show

    end
    private

    def destinations_params
        params.require(:destination).permit(:location, :lodging, :lodging_price, :flight_id)
    end
end
t.string "location"
    t.string "lodging"
    t.integer "lodging_price"
    t.integer "flight_id"