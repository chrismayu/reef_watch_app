class AddHcodeToAlarmCodes < ActiveRecord::Migration
  def change
    add_column :alarm_codes, :h_code, :integer
  end
end
