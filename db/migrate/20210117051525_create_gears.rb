class CreateGears < ActiveRecord::Migration[6.1]
  def change
    create_table :gears do |t|
      t.string :equipment
      t.integer :user_id
      t.timestamps
    end
  end
end
