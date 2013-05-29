class AlarmNotification < ActiveRecord::Base
  attr_accessible :params, :alarm_level, :alert_owner, :message_part1, :message_part2, :tank_name

default_scope order: 'alarm_notifications.created_at DESC'
 serialize :params

end
