class CreateWatchers < ActiveRecord::Migration
  def change
    create_table :watchers do |t|
      t.text :params
      t.string :temp_name
      t.integer :temp

      t.timestamps
    end
  end
end
