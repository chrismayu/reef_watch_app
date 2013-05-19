class Watcher < ActiveRecord::Base
  attr_accessible :params, :temp, :temp_name,  :ambient_temp, :ph_level, :powerhead, :main_pump, :heater, :day_light
  
  
 default_scope order: 'watchers.created_at DESC'
  
  
    serialize :params
    after_create :update_temp_info




    def self.chart_data(start = 1.weeks.ago)
      total_prices = prices_by_day(start)
      ambient_temp = where(ambient_temp: true).prices_by_day(start)
      #download_prices = where(shipping: false).prices_by_day(start)
      (start.to_date..Date.today).map do |date|
        {
          created_at: date,
          temp: total_prices[date] || 0,
         ambient_temp: ambient_temp[date] || 0,
         # download_price: download_prices[date] || 0
        }
      end
    end

    def self.prices_by_day(start)
      watchers = where(created_at: start.beginning_of_hour..Time.zone.now)
      watchers = watchers.group("date(created_at)")
      watchers = watchers.select("created_at, avg(temp) as total_price")
      watchers.each_with_object({}) do |watcher, temps|
        temps[watcher.created_at.to_date] = watcher.total_price
      end
    end


     
     
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
