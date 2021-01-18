class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :airport
      t.string :airline
      t.datetime :departure
      t.integer :ticket_price
      t.timestamps
    end
  end
end
