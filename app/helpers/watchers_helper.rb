module WatchersHelper
 
 
#  <%= content_tag :div, "", id: "watchers_chart", data: {watchers: @watcherschart} %>


  def watchers_chart_data
      (340.hours.ago.to_date..DateTime.now).map do |date|   # 336 hours is 14 days
        {
          created_at: date.to_date,
          temp: Watcher.where("date(created_at) = ?", date).average(:temp)
        }
      end
    end

end
