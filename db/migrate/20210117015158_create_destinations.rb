class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :lodging
      t.monetize :lodging_price
      t.timestamps
    end
  end
end
