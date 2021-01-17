class User < ApplicationRecord
has_many :gears
has_many :booked_trips
has_many :destinations, through: :booked_trips
has_many :flights, through: :booked_trips
end
