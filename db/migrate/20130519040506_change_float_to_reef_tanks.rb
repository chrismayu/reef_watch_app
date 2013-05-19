class ChangeFloatToReefTanks < ActiveRecord::Migration
  def up
  
    change_column :watchers, :ambient_temp, :decimal, :precision => 8, :scale => 2
    change_column :watchers, :temp, :decimal, :precision => 8, :scale => 2 
  end

  def down
  end
end
