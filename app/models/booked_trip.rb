class BookedTrip < ApplicationRecord
belongs_to :flight
belongs_to :user
#monetize :budget_cents, as: "budget"

end

