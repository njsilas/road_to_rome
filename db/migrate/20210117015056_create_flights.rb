class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :airport
      t.string :airline
      t.datetime :departure
      t.decimal :ticket_price => 4, :scale => 2 

      t.timestamps
    end
  end
end
