class AddParamsToAlarmNotifications < ActiveRecord::Migration
  def change
    add_column :alarm_notifications, :params, :text
  end
end
