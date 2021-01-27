class Flight < ApplicationRecord
belongs_to :destination, :dependent => :destroy_async
has_many :booked_trips
has_many :users, through: :booked_trips
monetize :ticket_price_cents
accepts_nested_attributes_for :destination    
validates :ticket_price, numericality:{ greater_than: 0 }
validates :arrival, :departure, :airport_to, :airport_from, presence: true
validate :invalid_arrival
validate :invalid_departure
scope :thismonth, -> {where('arrival = ?', Date.today.mon )}
scope :distant, -> {where('arrival != ?', Date.today.mon )}
scope :totflight, -> { sum(:ticket_price_cents) }
private
def invalid_arrival
      if arrival.present? && arrival < Date.today
        errors.add(:arrival, "can't be in the past")
      end
  end 
  def invalid_departure
    if departure.present? && arrival.present? && departure < arrival
      errors.add(:departure, "must be past arrival date")
    end
  end
end
