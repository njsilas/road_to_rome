class CreateGears < ActiveRecord::Migration[6.1]
  def change
    create_table :gears do |t|
      t.string :equipment

      t.timestamps
    end
  end
end
