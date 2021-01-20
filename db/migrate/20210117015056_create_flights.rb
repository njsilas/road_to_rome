class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :airport_to
      t.string :airline_to
      t.string :airline_from
      t.string :airport_from
      t.datetime :arrival
      t.datetime :departure
      t.belongs_to :destination
      t.monetize :ticket_price
      t.timestamps
    end
  end
end
