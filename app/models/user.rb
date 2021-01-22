class User < ApplicationRecord
has_secure_password
has_many :booked_trips
has_many :flights, through: :booked_trips
has_many :destinations
validates :email, presence: true, message: "Email Required"
validates :email, uniqueness: true, message: "Account Already Exists"
validates :password, presence: true, message: "Password required"
end
