class BookedTrip < ApplicationRecord
    #include MoneyRails::ActionViewExtension
belongs_to :flight
belongs_to :user
monetize :savings_cents, as: "savings"
accepts_nested_attributes_for :flight
scope :mytripz, -> { where("user_id = ?", current_user.id) }
    def dest_price
      self.flight.destination.lodging_price
    end
    def fly_price
      self.flight.ticket_price
    end
    def unscoped
        @booked_trips.where("user_id = ?", current_user.id)
    end
end
