class CreateReefTanks < ActiveRecord::Migration
  def change
    create_table :reef_tanks do |t|
      t.string :tank_name
      t.date :setup_date
      t.date :last_update
      t.integer :current_temp
      t.string :temp_name

      t.timestamps
    end
  end
end
