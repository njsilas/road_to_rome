class Flight < ApplicationRecord
belongs_to :destination
has_many :booked_trips
has_many :users, through: :booked_trips
monetize :ticket_price_cents
accepts_nested_attributes_for :destination    
validate :invalid_arrival
scope :upcoming, -> {where('arrival = ?', Date.today.mon )}
  def invalid_arrival
      if arrival.present? && arrival < Date.today
        errors.add(:arrival, "can't be in the past")
      end
  end 
  
end
