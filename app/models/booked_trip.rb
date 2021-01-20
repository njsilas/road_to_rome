class BookedTrip < ApplicationRecord
belongs_to :destination
belongs_to :flight
belongs_to :user
monetize :budget_cents, as: "budget"
accepts_nested_attributes_for :destination
end
