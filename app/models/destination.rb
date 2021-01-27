class Destination < ApplicationRecord
    belongs_to :user
    has_many :flights
    has_many :booked_trips, through: :flights
   monetize :lodging_price_cents
    scope :totlodge, -> { sum(:lodging_price_cents) }
    validate :lodging_price_cents, numericality: { greater_than: 0 }
end
