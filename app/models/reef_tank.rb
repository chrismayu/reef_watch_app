class ReefTank < ActiveRecord::Base
  attr_accessible :current_temp, :last_update, :setup_date, :tank_name, :temp_name
end
