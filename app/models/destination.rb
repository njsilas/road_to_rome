class Destination < ApplicationRecord
    has_many :users
    has_many :flights
    has_many :booked_trips, through: :flights
   monetize :lodging_price_cents
    
end
