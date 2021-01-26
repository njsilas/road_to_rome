class Flight < ApplicationRecord
belongs_to :destination, :dependent => :destroy_async
has_many :booked_trips
has_many :users, through: :booked_trips
monetize :ticket_price_cents
accepts_nested_attributes_for :destination    
validate :invalid_arrival
scope :thismonth, -> {where('arrival = ?', Date.today.mon )}
scope :distant, -> {where('arrival != ?', Date.today.mon )}
scope :totflight, -> { sum(:ticket_price_cents) }
def invalid_arrival
      if arrival.present? && arrival < Date.today
        errors.add(:arrival, "can't be in the past")
      end
  end 
  
end
