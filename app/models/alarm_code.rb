class AlarmCode < ActiveRecord::Base
  attr_accessible :alarm_code, :message, :tank_name, :sent_email, :email,  :display_site_wide,  :priority,  :message_2
  
  belongs_to :watcher#, :primary_key => :alarm_code , :foreign_key => :code
end


 