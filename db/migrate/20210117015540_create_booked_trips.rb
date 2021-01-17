class CreateBookedTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :booked_trips do |t|
      t.text :trip_notes
      t.integer :user_id
      t.integer :destination_id
      t.integer :flight_id
      t.timestamps
    end
  end
end
