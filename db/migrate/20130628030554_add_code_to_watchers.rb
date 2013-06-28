class AddCodeToWatchers < ActiveRecord::Migration
  def change
    add_column :watchers, :a_code, :integer
  end
end
