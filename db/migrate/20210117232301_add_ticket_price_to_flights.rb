class AddTicketPriceToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :ticket_price, :decimal, precision: 4, scale: 2
  end
end
