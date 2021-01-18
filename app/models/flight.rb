class Flight < ApplicationRecord
has_many :booked_trips
has_many :users, through: :booked_trips
#monetize :ticket_cents, as: "ticket_price"
            

end
