class CreateBookedTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :booked_trips do |t|
      t.decimal :estimated_budget => 4, :scale => 2 
      t.text :trip_notes

      t.timestamps
    end
  end
end
