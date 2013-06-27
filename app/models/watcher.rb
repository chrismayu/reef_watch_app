class Watcher < ActiveRecord::Base
  attr_accessible :params, :ato_pump, :chiller, :skimmer, :refuge_light, :code, :temp, :temp_name,  :ambient_temp, :ph_level, :powerhead, :main_pump, :heater, :day_light
  
  
  
  
  
  has_many :alarm_codes, :foreign_key => "tank_name"
  
 default_scope order: 'watchers.created_at DESC'
 # scope :ato_on, last("heater != ?", true)
 #  scope :ato, where("heater != ?", true)
# scope :recent, r("published_at desc")
 #scope :latest, visible.published.order("published_at desc")
    serialize :params
    after_create :update_temp_info



  
     
     
    private

    def update_temp_info
      # @applicant = Applicant.find(params[:invoice])

     # if status == "Completed" && params[:secret] == ENV["paypal_secret"] &&
      #    params[:receiver_email] == ENV["paypal_email"] 
      #  @applicant.update_attribute(:status_applicants, Time.now)
       # @applicant.update_attribute(:approved_applicants, true)

     # end
    end
  
  
end
