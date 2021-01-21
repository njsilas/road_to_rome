class User < ApplicationRecord
has_secure_password
has_many :booked_trips
has_many :flights, through: :booked_trips
has_many :destinations
end
