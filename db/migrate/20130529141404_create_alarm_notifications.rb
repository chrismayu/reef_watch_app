class CreateAlarmNotifications < ActiveRecord::Migration
  def change
    create_table :alarm_notifications do |t|
      t.string :tank_name
      t.string :alarm_level
      t.boolean :alert_owner
      t.text :message_part1
      t.text :message_part2

      t.timestamps
    end
  end
end
