class Destination < ApplicationRecord
    belongs_to :user
    has_many :flights
    has_many :booked_trips, through: :flights
   monetize :lodging_price_cents
    scope :totlodge, -> { sum(:lodging_price_cents) }
    validates :lodging_price, numericality:{ greater_than: 0 }
end
