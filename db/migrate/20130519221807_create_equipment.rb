class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.text :description
      t.string :equipment_name
      t.string :equipment_type
      t.string :image

      t.timestamps
    end
  end
end
