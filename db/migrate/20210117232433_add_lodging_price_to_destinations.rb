class AddLodgingPriceToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :lodging_price, :decimal, precision: 4, scale: 2
  end
end
