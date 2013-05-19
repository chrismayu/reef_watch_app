class CreateLivestocks < ActiveRecord::Migration
  def change
    create_table :livestocks do |t|
      t.text :description
      t.string :common_name
      t.string :scientific_name
      t.string :image
      t.string :livestock_type

      t.timestamps
    end
  end
end
