class AddEmailToAlarmCodes < ActiveRecord::Migration
  def change
    add_column :alarm_codes, :sent_email, :boolean
    add_column :alarm_codes, :email, :string
    add_column :alarm_codes, :display_site_wide, :boolean
    add_column :alarm_codes, :priority, :integer
    add_column :alarm_codes, :message_2, :string
  end
end
