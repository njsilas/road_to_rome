class User < ApplicationRecord
has_secure_password
has_many :gears
has_many :booked_trips
has_many :flights, through: :booked_trips
has_many :vacations, :through => :booked_trips, :source => :destination 
end
