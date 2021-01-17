class AddEstimatedBudgetToBookedTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :booked_trips, :estimated_budget, :decimal, precision: 4, scale: 2
  end
end
