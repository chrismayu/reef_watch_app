class AddPowerheadsToReefTanks < ActiveRecord::Migration
  def change
    
         add_column :watchers, :ambient_temp, :integer 
         add_column :watchers, :ph_level, :integer 
         add_column :watchers, :powerhead, :boolean 
         add_column :watchers, :main_pump, :boolean 
         add_column :watchers, :heater, :boolean 
         add_column :watchers, :day_light, :boolean 

  end
end
