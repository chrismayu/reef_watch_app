class CreateEquipmentImports < ActiveRecord::Migration
  def change
    create_table :equipment_imports do |t|

      t.timestamps
    end
  end
end
