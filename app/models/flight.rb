class Flight < ApplicationRecord
belongs_to :destination
has_many :booked_trips
has_many :users, through: :booked_trips
monetize :ticket_price_cents
      accepts_nested_attributes_for :destination    

end
