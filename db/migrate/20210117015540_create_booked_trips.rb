class CreateBookedTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :booked_trips do |t|
      t.text :trip_notes
      t.belongs_to :user_id
      t.belongs_to :flight_id
      t.integer :budget
      t.timestamps
    end
  end
end
