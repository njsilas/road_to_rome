class BookedTrip < ApplicationRecord
belongs_to :destinations
belongs_to :flights
belongs_to :users
end
