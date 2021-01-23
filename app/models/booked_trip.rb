class BookedTrip < ApplicationRecord
    include MoneyRails::ActionViewExtension
belongs_to :flight
belongs_to :user
monetize :savings_cents, as: "savings"
accepts_nested_attributes_for :flight
def goals
    total = self.savings - (dest_price + fly_price)
      if total.negative?
          "You are #{humanized_money_with_symbol(total)} away from your goal!"
      else
          "Awesome, you've got #{humanized_money_with_symbol(total)} to play with!"
      end
    end
    def dest_price
      self.flight.destination.lodging_price
    end
    def fly_price
      self.flight.ticket_price
    end
end
