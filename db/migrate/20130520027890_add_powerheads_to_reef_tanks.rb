class AddPowerheadsToReefTanks < ActiveRecord::Migration
  def change
    
         add_column :watchers, :ato_pump, :boolean 

  end
end
