class CreateLivestockImports < ActiveRecord::Migration
  def change
    create_table :livestock_imports do |t|

      t.timestamps
    end
  end
end
