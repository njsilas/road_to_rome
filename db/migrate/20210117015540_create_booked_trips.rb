class CreateBookedTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :booked_trips do |t|
      t.text :trip_notes
      t.belongs_to :user
      t.belongs_to :flight
      t.monetize :savings
      t.timestamps
    end
  end
end
