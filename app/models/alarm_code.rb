class AlarmCode < ActiveRecord::Base
  attr_accessible :message, :tank_name, :sent_email, :h_code, :email,  :display_site_wide,  :priority,  :message_2
  
  belongs_to :watcher, :primary_key => :h_code , :foreign_key => :a_code
end


 