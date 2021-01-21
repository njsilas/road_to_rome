class BookedTrip < ApplicationRecord
belongs_to :flight
belongs_to :user
monetize :savings_cents, as: "savings"
accepts_nested_attributes_for :flight
end
