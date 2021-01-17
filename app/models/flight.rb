class Flight < ApplicationRecord
has_many :booked_trips
has_many :users, through: :booked_trips
end
