class Destination < ApplicationRecord
    
    has_many :flights
    has_many :booked_trips
    has_many :users, through: :booked_trips
   monetize :lodging_price_cents
    
end
